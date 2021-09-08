import 'package:provider/provider.dart';
import 'package:sistemaagudeza/provider/images_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ImagesDisplay extends StatefulWidget {
  @override
  _ImagesDisplay createState() => _ImagesDisplay();
}

class _ImagesDisplay extends State<ImagesDisplay> {
  List imagenes = [];
  int index = 0;
  int _pulsaciones = 0;
  bool tap = false;
  Color backGroundColor = Colors.black;
  final FocusNode _focusNode = FocusNode();
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
    void onTap() {
      setState(() {
        if (backGroundColor == Colors.black) {
          backGroundColor = Colors.white;
        } else {
          backGroundColor = Colors.black;
        }
      });
    }

    void next() {
      setState(() {
        index++;
        if (index > imagenes.length - 1) index = 0;
      });
    }

    void previus() {
      setState(() {
        index--;
        if (index < 0) index = imagenes.length - 1;
      });
    }

    void _handleKeyEvent(RawKeyEvent event) {
      _pulsaciones++;

      if (_pulsaciones == 2) {
        switch (event.physicalKey.usbHidUsage) {
          case 458831: // DERECHA
            next();
            break;
          case 458832: // IZQUIERDA
            previus();
            break;
          case 458792: // ENTER
            onTap();
            break;
          default:
        }
        _pulsaciones = 0;
      }
    }

    return Scaffold(
      body: RawKeyboardListener(
        autofocus: true,
        focusNode: _focusNode,
        onKey: _handleKeyEvent,
        child: GestureDetector(
          onTap: onTap,
          onHorizontalDragStart: (DragStartDetails dragStartDetails) {
            tap = true;
          },
          onHorizontalDragEnd: (DragEndDetails dragEndDetails) {
            setState(() {});
          },
          onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
            if (tap) {
              if (dragUpdateDetails.delta.dx < 0) {
                index++;
                if (index > imagenes.length - 1) index = 0;
              } else if (dragUpdateDetails.delta.dx > 0) {
                index--;
                if (index < 0) index = imagenes.length - 1;
              }
              tap = false;
            }
          },
          child: Container(
            color: backGroundColor,
            height: heigthScreen,
            width: widthScreen,
            child: Image.asset(imagenes[index][0]),
          ),
        ),
      ),
    );
  }
}
