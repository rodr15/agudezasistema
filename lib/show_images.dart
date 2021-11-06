import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:imagenesplayer/provider/provide_images.dart';

class ImagesDisplay extends StatefulWidget {
  String imagen = '';
  String complemento = '';
  double scale = 0.0;
  ImagesDisplay(this.imagen, this.complemento, this.scale);
  @override
  _ImagesDisplay createState() => _ImagesDisplay();
}

class _ImagesDisplay extends State<ImagesDisplay> {
  String imagenes = '';
  String complemento = '';
  int index = 0;
  int _pulsaciones = 0;
  bool tap = false;
  Color backGroundColor = Colors.black;
  double _scale = 1.0;
  double _previusScale = 0.0;
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ProvideImages>(context);
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    imagenes = widget.imagen;
    complemento = widget.complemento;
    _scale = widget.scale;
    print('\n scsle -> $_scale');
    if (complemento != '' && imagenes.contains('.')) {
      imagenes = imagenes.replaceRange(
          imagenes.indexOf('.'), imagenes.length, complemento);
    }
    return Scaffold(
      body: Container(
        color: backGroundColor,
        height: heigthScreen,
        width: widthScreen,
        child: InteractiveViewer(
          panEnabled: false, // Set it to false
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 2,
          child: Image.asset(
            imagenes,
          ),
        ),
      ),
    );
  }
}
