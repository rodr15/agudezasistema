import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sistemaagudeza/screens/menu_principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(initialRoute: 'home', routes: {
      'home': (context) => MenuPrincipal(),
    });
  }
}
