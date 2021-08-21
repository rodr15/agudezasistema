import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sistemaagudeza/widgets/option.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  int _pulsaciones = 0;
  final FocusNode _focusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    void _handleKeyEvent(RawKeyEvent event) {
      _pulsaciones++;

      if (_pulsaciones == 2) {
        switch (event.physicalKey.usbHidUsage) {
          case 458831: // DERECHA

            break;
          case 458832: // IZQUIERDA

            break;
          case 458792: // ENTER

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
        child: Stack(children: [
          Container(
              color: Colors.blue,
              height: heigthScreen,
              width: widthScreen,
              child: GridView.count(
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
                children: List.generate(10, (index) {
                  return Options(index.toString(), index.toString());
                }),
              )),
        ]),
      ),
    );
  }
}
