import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/provide_images.dart';
import 'package:videoplayer/show_images.dart';

class Options extends StatefulWidget {
  String image = '';
  String name = '';
  bool selected = false;
  Options(this.image, this.name, this.selected);
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);

    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Column(children: [
      (provider.getTriggerVideo
          ? Container()
          : optionImage(widget.image, widget.selected)),
      // Name(widget.name),
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
  bool selected = false;
  optionImage(this.image, this.selected);
  /*void pushRoute(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => ImagesDisplay()));
  }*/

  @override
  Widget build(BuildContext context) {
    double heigthScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        // pushRoute(context);
        print(image);
      },
      child: Container(
        //padding: EdgeInsets.only(right: widthScreen / 10),

        width: widthScreen / 4,
        height: heigthScreen / 4,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
          border: Border.all(
              color: (selected ? Colors.green : Colors.orange.shade50),
              width: 5,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black,
          //     blurRadius: 20,
          //     offset: Offset(0.0, 0.0),
          //   ),
          // ],
        ),
      ),
    );
  }
}
