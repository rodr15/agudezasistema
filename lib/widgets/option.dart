import 'package:flutter/material.dart';
import 'package:sistemaagudeza/screens/images_display.dart';

class Options extends StatefulWidget {
  String image = '';
  String name = '';
  Options(this.image, this.name);
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Column(children: [
      optionImage(widget.image),
      Name(widget.name),
    ]);
  }
}

class Name extends StatelessWidget {
  String name = '';
  Name(this.name);

  @override
  Widget build(BuildContext context) {
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      width: widthScreen / 3,
      height: heigthScreen / 10,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class optionImage extends StatelessWidget {
  String image = '';
  optionImage(this.image);
  void pushRoute(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => ImagesDisplay()));
  }

  @override
  Widget build(BuildContext context) {
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        pushRoute(context);
      },
      child: Container(
        //padding: EdgeInsets.only(right: widthScreen / 10),

        width: widthScreen / 3,
        height: heigthScreen / 3,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.amber, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 20,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
      ),
    );
  }
}
