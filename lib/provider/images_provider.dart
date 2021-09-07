import 'package:flutter/material.dart';

class ProvideImages with ChangeNotifier {
  List  images = [
          ['lib/assets/3 metros.jpg', '3 metros'],
          ['lib/assets/4 metros.jpg', '4 metros'],
          ['lib/assets/5 metros.jpg', '5 metros']
        
  ];

  get getImages {
    return images;
  }

  set setMenus(List menu) {
// Menu -> 0
    String m = '';
    m = menu[0].toString() +
        menu[1].toString() +
        menu[2].toString() +
        menu[3].toString();
    print('PROVIDER $m');

    switch (m) {
      case '0000':
        images = [
          ['lib/assets/3 metros.jpg', '3 metros'],
          ['lib/assets/4 metros.jpg', '4 metros'],
          ['lib/assets/5 metros.jpg', '5 metros']
        ];
        break;
      case '1000':
        // Menu 3 metros
        images = [
          ['lib/assets/SMART VISION/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/SMART VISION/3 METROS/1 LETRAS LOG/1.PNG','LETRAS LOG'],
          ['lib/assets/SMART VISION/3 METROS/2 NUMEROS LOG/1.PNG','NUMEROS LOG'],
          ['lib/assets/SMART VISION/3 METROS/3 E DIR LOG/1.PNG','E DIR LOG'],
          ['lib/assets/SMART VISION/3 METROS/4 C LANDOLT LOG/1.PNG','C LANDOLT LOG'],
        ];
        break;
      case '2000':
        images = ['4 metros'];
        break;
      default:
    }
  }
}
