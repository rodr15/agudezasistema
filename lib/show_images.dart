import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:videoplayer/provider/provide_images.dart';
// import 'package:imagenesplayer/provider/provide_images.dart';

class ImagesDisplay extends StatefulWidget {
  String imagen = '';
  String complemento = '';
  String scale = '';
  ImagesDisplay(this.imagen, this.complemento, this.scale);
  @override
  _ImagesDisplay createState() => _ImagesDisplay();
}

class _ImagesDisplay extends State<ImagesDisplay> {
  PhotoViewController scaleController = PhotoViewController();
  double? scaleCopy = 0.0;
  int _pulsaciones = 0;
  double? initialScale = 1.0;
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    scaleController = PhotoViewController()..outputStateStream.listen(listener);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    scaleController.dispose();
    super.dispose();
  }

  void listener(PhotoViewControllerValue value) {
    setState(() {
      scaleCopy = value.scale;

      if (scaleCopy != null) {
        if (scaleCopy! < initialScale!) {
          initialScale = scaleCopy;
        }
      }
    });
  }

  String imagenes = '';
  String complemento = '';
  int index = 0;
  bool tap = false;
  Color backGroundColor = Colors.black;
  String _scale = '';
  double _previusScale = 0.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    imagenes = widget.imagen;
    complemento = widget.complemento;
    _scale = widget.scale;
    switch (_scale) {
      case '1': // NUMERO 1
        scaleController.scale = initialScale! * 1.1;
        break;
      case '2': // NUMERO 2
        scaleController.scale = initialScale! * 1.2;
        break;
      case '3': // NUMERO 3
        scaleController.scale = initialScale! * 1.3;
        break;
      case '4': // NUMERO 4
        scaleController.scale = initialScale! * 1.4;
        break;
      case '5': // NUMERO 5
        scaleController.scale = initialScale! * 1.5;
        break;
      case '6': // NUMERO 6
        scaleController.scale = initialScale! * 1.6;
        break;
      case '7': // NUMERO 7
        scaleController.scale = initialScale! * 1.7;
        break;
      case '8': // NUMERO 8
        scaleController.scale = initialScale! * 1.8;
        break;
      case '9': // NUMERO 9
        scaleController.scale = initialScale! * 1.9;
        break;
      case '0':
        scaleController.reset();
        break;
      case 'flecha derecha': // FLECHA DERECHA
        if (provider.getMoveZoom) scaleController.position += Offset(-10.0, 0);
        provider.setMoveZoom = false;

        break;
      case 'flecha izquierda': // FLECHA IZQUIERDA
        if (provider.getMoveZoom) scaleController.position += Offset(10.0, 0);
        provider.setMoveZoom = false;
        break;
      case 'flecha arriba': // FLECHA ARRIBA
        if (provider.getMoveZoom) scaleController.position += Offset(0, 10.0);
        provider.setMoveZoom = false;
        break;
      case 'flecha abajo': // FLECHA ABAJO
        if (provider.getMoveZoom) scaleController.position += Offset(0, -10.0);
        provider.setMoveZoom = false;
        break;
      default:
    }
    if (complemento != '' && imagenes.contains('.')) {
      imagenes = imagenes.replaceRange(
          imagenes.indexOf('.'), imagenes.length, complemento);
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              child: PhotoView(
            imageProvider: AssetImage(imagenes),
            controller: scaleController,
          )),
          Text("Scale applied: ${(scaleCopy! * 100) / initialScale!}")
        ],
      ),
    );
  }
}
