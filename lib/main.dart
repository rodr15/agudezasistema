import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sistemaagudeza/provider/images_provider.dart';
import 'package:sistemaagudeza/screens/menu_principal.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProvideImages()),
        ],
        child: MaterialApp(initialRoute: 'home', routes: {
          'home': (context) => MenuPrincipal(),
        }));
  }
}
