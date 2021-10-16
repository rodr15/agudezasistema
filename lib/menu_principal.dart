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
  List menu = [0, 0, 0, 0, 0];
  int indexMenu = 0;

  List imagenes = [];
  int index = 0;
  bool imageTrigger = false;
  bool videoTrigger = false;
  bool isPlaying = false;
  bool play = true;
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
    isPlaying = provider.getIsPlaying;
    videoTrigger = provider.getTriggerVideo;
    imageTrigger = provider.getTriggerImage;

    void _handleKeyEvent(RawKeyEvent event) {
      setState(() {
        _pulsaciones++;

        if (_pulsaciones == 2) {
          print('menuIndex -> $index');
          print('contador -> $_contador');

          print('IMAGE -> ${provider.getTriggerImage}');
          print('VIDEO -> ${provider.getTriggerVideo}');
          print('ISPLAYING -> ${provider.getIsPlaying}');

          print('Escribiendo en -> ${menu.indexOf(0)}');
          print('CONTADOR -> ${_contador} ');
          print('INDEX -> ${_contador}');
          switch (event.physicalKey.usbHidUsage) {
            case 458831: // DERECHA

              _contador++;
              if (_contador > imagenes.length - 1)
                _contador = imagenes.length - 1;
              index = _contador;
              _controller.jumpTo(
                  _contador * (MediaQuery.of(context).size.width * 1 / 3));
              // _controller.animateTo(
              //     _controller.offset +
              //         _contador * (MediaQuery.of(context).size.width * 7 / 20),
              //     curve: Curves.linear,
              //     duration: Duration(milliseconds: 100));

              break;
            case 458832: // IZQUIERDA

              _contador--;
              if (_contador < 0) _contador = 0;
              index = _contador;
              print(_controller.offset);
              _controller.jumpTo(
                  _contador * (MediaQuery.of(context).size.width * 1 / 3));
              // _controller.animateTo(
              //     _controller.offset -
              //         _contador * (MediaQuery.of(context).size.width * 7 / 20),
              //     curve: Curves.linear,
              //     duration: Duration(milliseconds: 100));
              break;
            case 458792: // ENTER

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
              if (!imageTrigger && !videoTrigger) {
                menu[menu.indexOf(0)] = _contador + 1;
                provider.setMenus = menu;
                _controller.jumpTo(0.0);
                _contador = 0;

                if (menu.contains(0))
                  index = menu[menu.indexOf(0) - 1] - 1;
                else
                  index = menu[menu.length - 1] - 1;

                // if (provider.getTriggerImage) _contador = index;
              }
              break;
            case 458756: // LETRA A

              provider.setTriggerVideo = false;
              provider.setTriggerImage = false;

              print('cero ${menu.indexOf(0)}');
              if (menu.indexOf(0) > 0) menu[menu.indexOf(0) - 1] = 0;
              _controller.jumpTo(0.0);
              provider.setMenus = menu;
              _contador = 0;

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
              child: Image.asset(
            'lib/assets/miniaturas/SMARTVISION PREMIUM.jpg',
          )),
          // Positioned(
          //   left: widthScreen * 13 / 40,
          //   child: Container(
          //     width: widthScreen * 7 / 20,
          //     height: heigthScreen,
          //     color: Colors.red,
          //   ),
          // ),
          if (isPlaying) VideoPlayerScreen(imagenes[index][0], play),
          Container(
              color: Colors.transparent,
              height: heigthScreen,
              width: widthScreen,
              child: GridView.count(
                controller: _controller,
                padding: EdgeInsets.only(
                  top: heigthScreen * 20 / 30,
                  left: widthScreen * 1 / 3,
                  right: widthScreen * 13 / 40,
                ),
                shrinkWrap: true,
                // primary: true,
// w/h
                // childAspectRatio: 1.0,
                childAspectRatio: (heigthScreen / 4) / (widthScreen / 4),
                // mainAxisSpacing: widthScreen / 10,
                scrollDirection: Axis.horizontal,
                //controller: _controller,
                crossAxisCount: 1,
                children: List.generate(imagenes.length, (index) {
                  return Options(imagenes[index][0], imagenes[index][1],
                      index == _contador);
                }),
              )),
          if (imageTrigger) ImagesDisplay(imagenes[index][0]),
          if (!videoTrigger)
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
                    fontSize: heigthScreen / 30,
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
