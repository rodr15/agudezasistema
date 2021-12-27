import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/menu_principal.dart';
import 'package:videoplayer/provider/preferences.dart';
import 'package:videoplayer/provider/provide_images.dart';
import 'package:videoplayer/show_videos.dart';
import 'package:provider/provider.dart';

void main() => runApp(SistemaApp());

class SistemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProvideImages()),
          ChangeNotifierProvider(create: (context) => ConfigProvider()),
        ],
        child: MaterialApp(
            //theme: ThemeData(scaffoldBackgroundColor: Colors.black),
            initialRoute: 'home',
            routes: {
              'home': (context) => MenuPrincipal(),
            }));
  }
}
