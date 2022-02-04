import 'dart:html';
import 'dart:math';

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/preferences.dart';
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
  int indexFondos = 0;
  int indexRecuadros = 0;
  bool cuadroBlanco = false;
  List Listrefractivos = [2,0,0,0,0,0,0];
  
  int stateRefractivos = 0;
  List Fondos = [
    'lib/assets/Menu Principal/Fondo0.png',
    'lib/assets/Menu Principal/Fondo1.png',
    'lib/assets/Menu Principal/Fondo2.png',
    'lib/assets/Menu Principal/Fondo3.png',
    'lib/assets/Menu Principal/Fondo4.png',
    'lib/assets/Menu Principal/Fondo5.png',
    'lib/assets/Menu Principal/Fondo6.png',
    'lib/assets/Menu Principal/Fondo7.png',
    'lib/assets/Menu Principal/Fondo8.png',
    'lib/assets/Menu Principal/Fondo9.png',
    'lib/assets/Menu Principal/Fondo10.png',
    'lib/assets/Menu Principal/Fondo11.png',
    'lib/assets/Menu Principal/Fondo12.png',
    'lib/assets/Menu Principal/Fondo13.png',
  ];
  List Recuadros = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];

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
    final configProvider = Provider.of<ConfigProvider>(context);
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    int botones = 1;
    indexFondos = configProvider.getPantalla;
    indexRecuadros = configProvider.getRecuadro;
    print('since widget');
    print(indexFondos);
    print(indexRecuadros);
    menu = provider.getMenus;
    imagenes = provider.getImages;
    isPlaying = provider.getIsPlaying;
    videoTrigger = provider.getTriggerVideo;
    imageTrigger = provider.getTriggerImage;
    String Fondo = Fondos[indexFondos];
    Color Recuadro = Recuadros[indexRecuadros];
    void izquierda() {
      _contador--;
      if (_contador < 0) _contador = imagenes.length - 1;
      index = _contador;
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
        _pulsaciones++;

        if (_pulsaciones == 2) {
          switch (event.physicalKey.usbHidUsage) {
            case 458806:
              // Cambio fondo
              indexFondos++;
              if (indexFondos >= Fondos.length - 1) indexFondos = 0;
              Fondo = Fondos[indexFondos];
              configProvider.setPantalla = indexFondos;
              configProvider.savingConfigurations();
              break;
            case 458807:
              // Cambio contornos
              indexRecuadros++;
              if (indexRecuadros >= Recuadros.length - 1) indexRecuadros = 0;
              Recuadro = Recuadros[indexRecuadros];
              configProvider.setRecuadro = indexRecuadros;
              configProvider.savingConfigurations();
              break;

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
              if (cuadroBlanco) {
                // stateRegractivos => 0 - Sin seleccionar
                //                     1 - Para cambiar
                //                     2 - Seleccionado
                //                     3 - Seleccionado segunda opcion

               if(Listrefractivos.contains(2)){
                 if(Listrefractivos.indexOf(2) < Listrefractivos.length -1){
                 Listrefractivos[Listrefractivos.indexOf(2)+1] = 1;}else{
                   Listrefractivos[0] = 1;
                 }
               }
              } else if (imageTrigger && zoom) {
                _scale = 'flecha derecha';
                provider.setMoveZoom = true;
              } else {
                triggerBackgroundColor = false;
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
                triggerBackgroundColor = false;
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
                    String imageChange = imagenes[index][0];
                    imageChange = imageChange.replaceRange(
                        0, imageChange.indexOf('.'), '');
                    complemento = 'N' + imageChange;
                  }
                } else {
                  backgroundColor = Colors.white;
                  complemento = '';
                }
              }

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
              cuadroBlanco = (menu[0] == 6 && menu[1] == 2);

              break;
            case 458756: // LETRA A
              cuadroBlanco = false;
              if (isInMenu) {
                changeVideo = isPlaying && videoTrigger;
                if (menu.indexOf(0) > 0) {
                  provider.setTriggerVideo = false;
                  provider.setTriggerImage = false;

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
              if (imageTrigger &&
                  (imagenes[index][2] > 0 && imagenes[index][2] < 70)) {
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
              } else if (imageTrigger &&
                  (imagenes[index][2] > 0 && imagenes[index][2] < 70)) {
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

    Container defectosrefractivos = Container(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 5 / 6,
                width: MediaQuery.of(context).size.width,
                child: ImagesDefectos(),
              ),
              Row(
                children: List.generate(7, (index) {
                  int imgSelected=0;
                  bool selected=false;
                  bool preSelected=false;
                // stateRegractivos => 0 - Sin seleccionar
                //                     1 - Para cambiar
                //                     2 - Seleccionado
                //                     3 - Seleccionado segunda opcion
                // BOTONES 
                // => 0 - Sin seleccionar
                // => 1 - Imagen 1
                // => 2 - Imagen 2
                  switch (Listrefractivos[index]) {
                    case 0:
                      imgSelected = 0;
                      selected = false;
                      preSelected = false;
                      break;
                      case 1: 
                      imgSelected = 0;
                      selected = false;
                      preSelected = true;
                      break;
                      case 2: 
                       imgSelected = 1;
                      selected = true;
                      preSelected = false;
                      break;
                      case 3: 
                      imgSelected = 2;
                      selected = true;
                      preSelected = false;
                      break;
                    default:
                  }
                  return Botones(index);
                }),
              ),
            ],
          ),
          Positioned(
              height: 100,
              top: MediaQuery.of(context).size.height * 7 / 10,
              child: Container(
                  transform: Matrix4.rotationZ(-pi / 2),
                  height: MediaQuery.of(context).size.height * 1 / 10,
                  width: MediaQuery.of(context).size.width * 3 / 10,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                            'lib/assets/DEFECTOS REFRACTIVOS/LOGO.png')),
                  )))
        ],
      ),
    );

    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          _validation(context);
          cuadroBlanco = false;
          if (isInMenu) {
            changeVideo = isPlaying && videoTrigger;
            if (menu.indexOf(0) > 0) {
              provider.setTriggerVideo = false;
              provider.setTriggerImage = false;

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
                        Fondo,
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
                    return Options(Recuadro, imagenes[index][0],
                        imagenes[index][1], isInMenu && (index == _contador));
                  }),
                )),
            if (imageTrigger && !cuadroBlanco)
              ImagesDisplay(
                  imagenes[index][0], complemento, _scale, backgroundColor),
            if (cuadroBlanco) defectosrefractivos,
            if (!videoTrigger && !imageTrigger && !cuadroBlanco)
              Positioned(
                top: heigthScreen * 9 / 10,
                child: Container(
                  height: heigthScreen / 10,
                  width: widthScreen,
                  color: Colors.transparent,
                  child: Center(
                      child: Text(
                    imagenes[_contador][1].toString().toUpperCase(),
                    style: TextStyle(
                      fontSize: heigthScreen / 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            if (!videoTrigger && !imageTrigger && !cuadroBlanco)
              Positioned(
                top: heigthScreen * 17.2 / 30,
                child: Container(
                  width: widthScreen,
                  color: Colors.transparent,
                  child: Center(
                      child: Text(
                    provider.getRuta.toUpperCase(),
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

class ImagesDefectos extends StatefulWidget {
  
  @override
  _ImagesDefectosState createState() => _ImagesDefectosState();
}

class _ImagesDefectosState extends State<ImagesDefectos> {
  List imagenes = [];
  String color = ' B';
  String imagen = '';
  int opcion = 0;
  Color backgroundColor = Colors.white;
  late PhotoViewScaleStateController scaleStateController;

  @override
  void initState() {
    // TODO: implement initState

    scaleStateController = PhotoViewScaleStateController();
    // Restringir rotación de la pantalla
    WidgetsFlutterBinding.ensureInitialized();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scaleStateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imagesProvider = Provider.of<ProvideImages>(context);
    print('IMAGEN');
    imagenes = [
      'lib/assets/DEFECTOS REFRACTIVOS/1.png',
      'lib/assets/DEFECTOS REFRACTIVOS/1S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/2.png',
      'lib/assets/DEFECTOS REFRACTIVOS/2S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/3.png',
      'lib/assets/DEFECTOS REFRACTIVOS/3S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/4.png',
      'lib/assets/DEFECTOS REFRACTIVOS/4S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/5.png',
      'lib/assets/DEFECTOS REFRACTIVOS/5S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/6.png',
      'lib/assets/DEFECTOS REFRACTIVOS/6S.png',
      'lib/assets/DEFECTOS REFRACTIVOS/7.png',
      'lib/assets/DEFECTOS REFRACTIVOS/7S.png',
    ];
    imagen = imagenes[imagesProvider.getDefectos];
    return Scaffold(
      // Implemented with a PageView, simpler than setting it up yourself
      // You can either specify images directly or by using a builder as in this tutorial
      body: Container(
        child: PhotoViewGallery.builder(
          itemCount: 1,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              //imageProvider: NetworkImage(imageList[index]),
              imageProvider: AssetImage(
                imagen,
              ),
              // Contained = the smallest possible size to fit one dimension of the screen
              minScale: PhotoViewComputedScale.contained,
              // Covered = the smallest possible size to fit the whole screen
              maxScale: PhotoViewComputedScale.covered * 2,
              scaleStateController: scaleStateController,
            );
          },

          scrollPhysics: BouncingScrollPhysics(),
          // Set the background color to the "classic white"
          backgroundDecoration: BoxDecoration(color: backgroundColor),
          loadingBuilder: (context, event) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class Botones extends StatefulWidget {
  int index = 0;
  Botones(this.index);
  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  int imgSelected = 0;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final imagesProvider = Provider.of<ProvideImages>(context);
    double height = MediaQuery.of(context).size.height * 1 / 6 - 2;
    double width = (MediaQuery.of(context).size.width - 14) / 7;
    double freeSpace = height * 1 / 5;
    double imageHeight = (height - freeSpace) * 3 / 4;
    double textHeigth = height - imageHeight - freeSpace;
    double imageWidth = imageHeight;
    double textWidth = width * 9 / 10;
    Color colorSelected = Colors.orange;
    Color colorUnselected = Colors.white;
    int index = widget.index;
    List nombre = [
      'emetropía',
      'miopia',
      'hipermetropia',
      'astigmatismo',
      'catarata',
      'glaucoma',
      'Deg.Macular'
    ];
    List imagen = [
      ['lib/assets/IconosDefectos/1.png', 'lib/assets/IconosDefectos/1S.png'],
      ['lib/assets/IconosDefectos/2.png', 'lib/assets/IconosDefectos/2S.png'],
      ['lib/assets/IconosDefectos/3.png', 'lib/assets/IconosDefectos/3S.png'],
      ['lib/assets/IconosDefectos/4.png', 'lib/assets/IconosDefectos/4S.png'],
      ['lib/assets/IconosDefectos/5.png', 'lib/assets/IconosDefectos/5S.png'],
      ['lib/assets/IconosDefectos/6.png', 'lib/assets/IconosDefectos/6S.png'],
      ['lib/assets/IconosDefectos/7.png', 'lib/assets/IconosDefectos/7S.png'],
    ];

    print('-----------------------------');
    selected = ((imagesProvider.getDefectos - imgSelected) / 2) == index;
    if(!selected){ imgSelected = 0;} 
    
     
    

    Container ButtonImage = Container(
        height: imageHeight,
        width: imageWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(imagen[index][imgSelected])),
        ));
    Container ButtonText = Container(
      height: textHeigth,
      width: textWidth,
      decoration: BoxDecoration(
        color: colorSelected,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
          child: Text(
        nombre[index].toString().toUpperCase(),
        style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal),
      )),
    );
    Container Boton = Container(
        decoration: BoxDecoration(
            color: imgSelected != 0 ? colorSelected : colorUnselected,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border:
                Border.all(color: selected ? colorSelected : colorUnselected)),
        child: InkWell(
          onTap: () {
            setState(() {
              if (imgSelected == 0 && selected) {
                imgSelected = 1;
              } else {
                imgSelected = 0;
              }

              imagesProvider.setDefectos = index * 2 + imgSelected;
            });
          },
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                const Spacer(),
                ButtonImage,
                const Spacer(),
                ButtonText,
                const Spacer(),
              ],
            ),
          ),
        ));
    return Boton;
  }
}
