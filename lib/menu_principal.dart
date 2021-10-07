import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/provide_images.dart';
import 'package:videoplayer/show_images.dart';
import 'package:videoplayer/show_videos.dart';

import 'options.dart';

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
  int index = 0;
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

    menu = provider.getMenus;
    imagenes = provider.getImages;
    void _handleKeyEvent(RawKeyEvent event) {
      setState(() {
        _pulsaciones++;

        if (_pulsaciones == 2) {
          print('menuIndex -> $index');
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
              print('TRIGGER IMAGE');
              print(provider.getTriggerImage);
              /*if (provider.getTriggerImage) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ImagesDisplay()),
                );
              }
              else if (provider.getTriggerVideo) {
                print('IMAGENES');
                print(imagenes[_contador][0]);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          VideoPlayerScreen(imagenes[index][0])),
                );
              }*/
              menu[menu.indexOf(0)] = _contador + 1;
              provider.setMenus = menu;
              _controller.jumpTo(0.0);
              _contador = 0;
              print('INDEX $indexMenu');
              print('MENU PRINCIPAL $menu');

              if (menu.contains(0))
                index = menu[menu.indexOf(0) - 1] - 1;
              else
                index = menu[menu.length - 1] - 1;
              break;
            case 458756: // LETRA A
              provider.setTriggerImage = false;
              provider.setTriggerVideo = false;
              if (menu.indexOf(0) != 0) menu[menu.indexOf(0) - 1] = 0;
              _controller.jumpTo(0.0);
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
          if (provider.getTriggerVideo)
            VideoPlayerScreen(imagenes[_contador][0]),
          Container(
              color: (provider.getTriggerVideo
                  ? Colors.transparent
                  : Colors.black),
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
          if (provider.getTriggerImage) ImagesDisplay(imagenes[_contador][0]),
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
