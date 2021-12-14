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

  Color backgroundColor = Colors.white;
  bool triggerBackgroundColor = false;
  int _pulsaciones = 0;
  int _contador = 0;
  int _contadorAbajo = 0;
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
  String complemento = '';
  String _scale = '0';
  bool zoom = false;
  bool _initialPosition = false;
  final FocusNode _focusNode = FocusNode();
  final ScrollController _controller = ScrollController();
  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _initialPosition = true;
    super.initState();
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

    void izquierda() {
      _contador--;
      if (_contador < 0) _contador = imagenes.length - 1;
      index = _contador;
      print('IZQUIERDA');
      _controller
          .jumpTo(_contador * (MediaQuery.of(context).size.width * 1 / 3));
    }

    void derecha() {
      _contador++;
      if (_contador > imagenes.length - 1) _contador = 0;
      index = _contador;
      _controller
          .jumpTo(_contador * (MediaQuery.of(context).size.width * 1 / 3));
    }

    void playStop() {
      setState(() {
        play = !play;
      });
    }

    void stop() {
      setState(() {
        isInMenu = true;
        provider.setIsPlaying = false;
        changeVideo = false;
        if (menu.indexOf(0) > 0) {
          provider.setTriggerVideo = false;
          provider.setTriggerImage = false;

          print('cero ${menu.indexOf(0)}');
          _contador = menu[menu.indexOf(0) - 1];
          izquierda();
          // index = menu[menu.indexOf(0) - 1] - 1;
          menu[menu.indexOf(0) - 1] = 0;

          provider.setMenus = menu;
        }
      });
    }

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
      _initialPosition = false;
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
            case 458782: // NUMERO 1
              _scale = '1';
              zoom = true;
              break;
            case 458783: // NUMERO 2
              _scale = '2';
              zoom = true;
              break;
            case 458784: // NUMERO 3
              _scale = '3';
              zoom = true;
              break;
            case 458785: // NUMERO 4
              _scale = '4';
              zoom = true;
              break;
            case 458786: // NUMERO 5
              _scale = '5';
              zoom = true;
              break;
            case 458787: // NUMERO 6
              _scale = '6';
              zoom = true;
              break;
            case 458788: // NUMERO 7
              _scale = '7';
              zoom = true;
              break;
            case 458789: // NUMERO 8
              _scale = '8';
              zoom = true;
              break;
            case 458790: // NUMERO 9
              _scale = '9';
              zoom = true;
              break;
            case 458791:
              _scale = '0';
              zoom = false;
              break;

            case 458831: // DERECHA
              print('imageTrigger -> $imageTrigger');
              print('zoom -> $zoom');
              if (imageTrigger && zoom) {
                _scale = 'flecha derecha';
                provider.setMoveZoom = true;
              } else {
                complemento = '';
                _contadorAbajo = 0;
                if (isInMenu) {
                  derecha();
                } else {
                  indexMenuVideo++;
                  if (indexMenuVideo > botones) indexMenuVideo = botones;
                }
              }

              break;
            case 458832: // IZQUIERDA
              if (imageTrigger && zoom) {
                _scale = 'flecha izquierda';
                provider.setMoveZoom = true;
              } else {
                complemento = '';
                _contadorAbajo = 0;
                if (isInMenu) {
                  izquierda();
                } else {
                  indexMenuVideo--;
                  if (indexMenuVideo < 0) indexMenuVideo = 0;
                }
              }
              // _controller.animateTo(
              //     _controller.offset -
              //         _contador * (MediaQuery.of(context).size.width * 7 / 20),
              //     curve: Curves.linear,
              //     duration: Duration(milliseconds: 100));
              break;
            case 458792: // ENTER
              if (imageTrigger) {
                triggerBackgroundColor = !triggerBackgroundColor;
                if (triggerBackgroundColor) {
                  backgroundColor = Colors.black;
                  if (imagenes[index][2] == 70) {
                    complemento = 'N.JPG';
                  }
                } else {
                  backgroundColor = Colors.white;
                  complemento = '';
                }
              }
              print('color -> $backgroundColor');
              if (isInMenu) {
                if (changeVideo) {
                  provider.setIsPlaying = false;
                  changeVideo = false;
                  _contador = 0;
                  index = 0;
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
                  _contador = menu[menu.indexOf(0) - 1];
                  izquierda();
                  // index = menu[menu.indexOf(0) - 1] - 1;
                  menu[menu.indexOf(0) - 1] = 0;
                  provider.setMenus = menu;
                }
              }
              zoom = false;
              _scale = '0';
              break;
            case 458834: // Arriba
              if (isPlaying) isInMenu = false;
              if (imageTrigger && (imagenes[index][2] > 0)) {
                _contadorAbajo--;
                if (_contadorAbajo < 1) {
                  izquierda();
                  _contadorAbajo = imagenes[index][2];
                }
                switch (_contadorAbajo) {
                  case 0:
                    complemento = '';
                    break;
                  case 1:
                    complemento = "-h1.jpg";
                    break;
                  case 2:
                    complemento = "-h2.jpg";
                    break;
                  case 3:
                    complemento = "-h3.jpg";
                    break;
                  default:
                    complemento = '';
                }
              } else if (imageTrigger && zoom) {
                _scale = 'flecha arriba';
                provider.setMoveZoom = true;
              }

              break;
            case 458833: //Abajo
              if (isPlaying) isInMenu = true;
              if (imageTrigger && (imagenes[index][2] < 0)) {
                derecha();

                _contadorAbajo = 1;
                complemento = "-h1.jpg";
              } else if (imageTrigger && (imagenes[index][2] > 0)) {
                _contadorAbajo++;
                if (_contadorAbajo > imagenes[index][2]) {
                  derecha();
                  if (_contador != 0) _contadorAbajo = 1;
                }
                switch (_contadorAbajo) {
                  case 0:
                    complemento = '';
                    break;
                  case 1:
                    complemento = "-h1.jpg";
                    break;
                  case 2:
                    complemento = "-h2.jpg";
                    break;
                  case 3:
                    complemento = "-h3.jpg";
                    break;
                  default:
                    complemento = '';
                }
              } else if (imageTrigger && zoom) {
                _scale = 'flecha abajo';
                provider.setMoveZoom = true;
              }
              break;
            default:
          }

          _pulsaciones = 0;
        }
      });
    }

    void correctionPosition() {
      if (_controller.offset !=
          _contador * (MediaQuery.of(context).size.width * 1 / 3)) {
        _controller
            .jumpTo(_contador * (MediaQuery.of(context).size.width * 1 / 3));
      }
    }

    if (!_initialPosition) correctionPosition();
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
              _contador = menu[menu.indexOf(0) - 1];
              izquierda();
              // index = menu[menu.indexOf(0) - 1] - 1;
              menu[menu.indexOf(0) - 1] = 0;

              provider.setMenus = menu;
            }
          }
          zoom = false;
          _scale = '0';
          return Future.value(false);
        },
        child: RawKeyboardListener(
          autofocus: true,
          focusNode: _focusNode,
          onKey: _handleKeyEvent,
          child: Stack(children: [
            Container(
                child: isPlaying
                    ? VideoPlayerScreen(imagenes[index][0], play, volume)
                    : Image.asset(
                        'lib/assets/miniaturas/SMARTVISION PREMIUM.jpg',
                      )),
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
            if (imageTrigger)
              ImagesDisplay(
                  imagenes[index][0], complemento, _scale, backgroundColor),
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
