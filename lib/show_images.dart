import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/provide_images.dart';

class ImagesDisplay extends StatefulWidget {
  String imagen = '';
  ImagesDisplay(this.imagen);
  @override
  _ImagesDisplay createState() => _ImagesDisplay();
}

class _ImagesDisplay extends State<ImagesDisplay> {
  String imagenes = '';
  int index = 0;
  int _pulsaciones = 0;
  bool tap = false;
  Color backGroundColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    imagenes = widget.imagen;

    return Scaffold(
      body: Container(
        color: backGroundColor,
        height: heigthScreen,
        width: widthScreen,
        child: Image.asset(imagenes),
      ),
    );
  }
}
