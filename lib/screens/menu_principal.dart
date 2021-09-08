import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistemaagudeza/provider/images_provider.dart';
import 'package:sistemaagudeza/screens/images_display.dart';
import 'package:sistemaagudeza/widgets/option.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  int _pulsaciones = 0;

  int _contador = 0;
  List menu = [0, 0, 0, 0];
  int indexMenu = 0;

  bool change = true;
  List imagenes = [];
  final FocusNode _focusNode = FocusNode();
  final ScrollController _controller = ScrollController();
  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    imagenes = provider.getImages;
    void _handleKeyEvent(RawKeyEvent event) {
      setState(() {
        _pulsaciones++;

        if (_pulsaciones == 2) {
          print('menuIndex -> $indexMenu');
          switch (event.physicalKey.usbHidUsage) {
            case 458831: // DERECHA
              _controller.animateTo(
                  _controller.offset + MediaQuery.of(context).size.width / 4,
                  curve: Curves.linear,
                  duration: Duration(milliseconds: 100));
              _contador++;
              if (_contador > imagenes.length - 1)
                _contador = imagenes.length - 1;
              break;
            case 458832: // IZQUIERDA
              _controller.animateTo(
                  _controller.offset - MediaQuery.of(context).size.width / 4,
                  curve: Curves.linear,
                  duration: Duration(milliseconds: 100));
              _contador--;
              if (_contador < 0) _contador = 0;
              break;
            case 458792: // ENTER
              if (provider.getTriggerImage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ImagesDisplay()),
                    (route) => false);
              } else {
                if (change) {
                  change = false;
                }
                menu[indexMenu] = _contador + 1;
                indexMenu++;
                if (indexMenu > menu.length - 1) indexMenu = menu.length - 1;
                provider.setMenus = menu;
                _contador = 0;
                print('INDEX $indexMenu');
                print('MENU PRINCIPAL $menu');
              }
              break;
            case 458756: // LETRA A
              provider.setTriggerImage = false;
              if (!change) {
                menu[indexMenu - 1] = 0;

                change = true;
              }

              menu[indexMenu] = 0;
              indexMenu--;

              if (indexMenu < 0) indexMenu = 0;
              provider.setMenus = menu;
              _contador = 0;
              print('INDEX $indexMenu');
              print('MENU PRINCIPAL $menu');
              break;
            default:
          }

          _pulsaciones = 0;
        }
      });
    }

    return Scaffold(
      body: RawKeyboardListener(
        autofocus: true,
        focusNode: _focusNode,
        onKey: _handleKeyEvent,
        child: Stack(children: [
          Container(
              color: Colors.black,
              height: heigthScreen,
              width: widthScreen,
              child: GridView.count(
                controller: _controller,
                padding: EdgeInsets.only(
                  top: heigthScreen * 16 / 30,
                  left: widthScreen * 4 / 10,
                  right: widthScreen * 6 / 10,
                ),
                shrinkWrap: true,
                // primary: true,

                childAspectRatio: 1,
                mainAxisSpacing: widthScreen / 10,
                scrollDirection: Axis.horizontal,
                //controller: _controller,
                crossAxisCount: 1,
                children: List.generate(imagenes.length, (index) {
                  return Options(imagenes[index][0], imagenes[index][1]);
                }),
              )),
          Positioned(
            top: heigthScreen * 9 / 10,
            child: Container(
              height: heigthScreen / 10,
              width: widthScreen,
              color: Colors.transparent,
              child: Center(
                  child: Text(
                imagenes[_contador][1].toString(),
                style: TextStyle(
                  fontSize: heigthScreen / 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
