import 'package:flutter/gestures.dart';
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
  void _validation(BuildContext context) async {
    final result = false;
  }

  int _pulsaciones = 0;

  int _contador = 0;
  List menu = [0, 0, 0, 0, 0];
  int indexMenu = 0;
  bool isInMenu = true;
  List imagenes = [];
  int index = 0;
  int indexMenuVideo = 0;
  bool changeVideo = false;
  bool imageTrigger = false;
  bool videoTrigger = false;
  bool isPlaying = false;
  bool play = true;
  double volume = 0.5;
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
    int botones = 1;
    menu = provider.getMenus;
    imagenes = provider.getImages;
    isPlaying = provider.getIsPlaying;
    videoTrigger = provider.getTriggerVideo;
    imageTrigger = provider.getTriggerImage;
    void playStop() {
      setState(() {
        play = !play;
      });
    }

    void stop() {}

    Stack VideoTools = Stack(
      children: [
        Positioned(
            left: widthScreen / 3,
            child: Container(
              color: Colors.transparent,
              width: widthScreen / 3,
              child: Row(
                children: [
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    heroTag: 'playStopButton',
                    mini: true,
                    child: Icon(
                      (!play ? Icons.play_arrow : Icons.pause),
                      color: (!isInMenu && indexMenuVideo == 0
                          ? Colors.black
                          : Colors.white),
                    ),
                    onPressed: playStop,
                  ),
                  Spacer(),
                  FloatingActionButton(
                      backgroundColor: Colors.amber,
                      heroTag: 'stop',
                      mini: true,
                      child: Icon(
                        Icons.stop,
                        color: (!isInMenu && indexMenuVideo == 1
                            ? Colors.black
                            : Colors.white),
                      ),
                      onPressed: stop),

                  // Text(volume.toString()),
                  Spacer(),
                ],
              ),
            )),
      ],
    );

    void _handleKeyEvent(RawKeyEvent event) {
      setState(() {
        print('--------------------');
        _pulsaciones++;

        if (_pulsaciones == 2) {
          print('menuIndex -> $index');
          print('contador -> $_contador');

          print('IMAGE -> ${provider.getTriggerImage}');
          print('VIDEO -> ${provider.getTriggerVideo}');
          print('ISPLAYING -> ${provider.getIsPlaying}');
          print('MENU en -> ${menu}');
          print('Escribiendo en -> ${menu.indexOf(0)}');
          print('CONTADOR -> ${_contador} ');
          print('INDEX -> ${index}');
          print('change -> $changeVideo');
          print(event.physicalKey.usbHidUsage);
          switch (event.physicalKey.usbHidUsage) {
            case 458831: // DERECHA
              if (isInMenu) {
                _contador++;
                if (_contador > imagenes.length - 1) _contador = 0;
                index = _contador;
                _controller.jumpTo(
                    _contador * (MediaQuery.of(context).size.width * 1 / 3));
              } else {
                indexMenuVideo++;
                if (indexMenuVideo > botones) indexMenuVideo = botones;
              }
              // _controller.animateTo(
              //     _controller.offset +
              //         (MediaQuery.of(context).size.width * 1 / 3),
              //     curve: Curves.linear,
              //     duration: Duration(milliseconds: 100));

              break;
            case 458832: // IZQUIERDA
              if (isInMenu) {
                _contador--;
                if (_contador < 0) _contador = imagenes.length - 1;
                index = _contador;
                print(_controller.offset);
                _controller.jumpTo(
                    _contador * (MediaQuery.of(context).size.width * 1 / 3));
              } else {
                indexMenuVideo--;
                if (indexMenuVideo < 0) indexMenuVideo = 0;
              }
              // _controller.animateTo(
              //     _controller.offset -
              //         _contador * (MediaQuery.of(context).size.width * 7 / 20),
              //     curve: Curves.linear,
              //     duration: Duration(milliseconds: 100));
              break;
            case 458792: // ENTER
              if (isInMenu) {
                if (changeVideo) {
                  provider.setIsPlaying = false;
                  changeVideo = false;
                  break;
                }
                if ((!imageTrigger && !videoTrigger) &&
                    (menu.indexOf(0) < menu.length - 1)) {
                  menu[menu.indexOf(0)] = _contador + 1;
                  provider.setMenus = menu;
                  _controller.jumpTo(0.0);
                  _contador = 0;

                  if (menu.contains(0))
                    index = menu[menu.indexOf(0) - 1] - 1;
                  else
                    index = menu[menu.length - 1] - 1;

                  if (provider.getTriggerImage) _contador = index;
                }
              } else {
                switch (indexMenuVideo) {
                  case 0:
                    playStop();
                    break;
                  case 1:
                    stop();
                    break;
                  case 2:
                    break;
                  default:
                }
              }
              break;
            case 458756: // LETRA A
              if (isInMenu) {
                if (isPlaying && videoTrigger)
                  changeVideo = true;
                else
                  changeVideo = false;
                if (menu.indexOf(0) > 0) {
                  provider.setTriggerVideo = false;
                  provider.setTriggerImage = false;

                  print('cero ${menu.indexOf(0)}');
                  menu[menu.indexOf(0) - 1] = 0;
                  _controller.jumpTo(0.0);
                  provider.setMenus = menu;
                  _contador = 0;
                  index = 0;
                }
              }
              break;
            case 458834: // Arriba
              if (isPlaying) {
                isInMenu = false;
              }
              break;
            case 458833: //Abajo
              isInMenu = true;
              break;
            default:
          }

          _pulsaciones = 0;
        }
      });
    }

    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          _validation(context);
          if (isInMenu) {
            if (isPlaying && videoTrigger)
              changeVideo = true;
            else
              changeVideo = false;
            if (menu.indexOf(0) > 0) {
              provider.setTriggerVideo = false;
              provider.setTriggerImage = false;

              print('cero ${menu.indexOf(0)}');
              menu[menu.indexOf(0) - 1] = 0;
              _controller.jumpTo(0.0);
              provider.setMenus = menu;
              _contador = 0;
              index = 0;
            }
          }
          return Future.value(false);
        },
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: _focusNode,
          onKey: _handleKeyEvent,
          child: Stack(children: [
            Container(
                child: Image.asset(
              'lib/assets/miniaturas/SMARTVISION PREMIUM.jpg',
            )),
            if (isPlaying) VideoPlayerScreen(imagenes[index][0], play, volume),
            Container(
                color: Colors.transparent,
                height: heigthScreen,
                width: widthScreen,
                child: GridView.count(
                  dragStartBehavior: DragStartBehavior.start,
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
                        isInMenu && (index == _contador));
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
            if (isPlaying) VideoTools,
          ]),
        ),
      ),
    );
  }
}
