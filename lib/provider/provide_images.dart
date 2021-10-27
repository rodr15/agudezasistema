import 'package:flutter/material.dart';

class ProvideImages with ChangeNotifier {
  bool triggerVideo = false;
  bool triggerImage = false;
  bool isPlaying = false;
  List pMenu = [0, 0, 0, 0, 0];
  List images = [
    ['lib/assets/miniaturas/3 metros.jpg', '3 metros'],
    ['lib/assets/miniaturas/4 metros.jpg', '4 metros'],
    ['lib/assets/miniaturas/5 metros.jpg', '5 metros'],
    ['lib/assets/miniaturas/6 metros.jpg', '6 metros'],
    ['lib/assets/miniaturas/ATLAS.JPG', 'ATLAS E IMAGENES DE REFERENCIA'],
    ['lib/assets/miniaturas/DEFECTOS REFRACTIVOS.jpg', 'DEFECTOS REFRACTIVOS'],
    ['lib/assets/miniaturas/MACULOPATIA.jpg', 'MACULOPATIA'],
    ['lib/assets/miniaturas/SA3000V.JPG', 'TEST DE ESTEREOPSIS'],
    ['lib/assets/miniaturas/SA3000V.JPG', 'TEST DE COLOR'],
    ['lib/assets/miniaturas/tipos de lentes.jpg', 'TITPOS DE LENTES']
  ];

  get getImages {
    return images;
  }

  get getTriggerImage {
    return triggerImage;
  }

  set setIsPlaying(nIsPlaying) {
    isPlaying = nIsPlaying;
  }

  get getIsPlaying {
    return isPlaying;
  }

  set setTriggerImage(nTriggerImage) {
    triggerImage = nTriggerImage;
  }

  get getTriggerVideo {
    return triggerVideo;
  }

  set setTriggerVideo(nTriggerVideo) {
    triggerVideo = nTriggerVideo;
  }

  get getMenus {
    return pMenu;
  }

  set setMenus(List menu) {
// Menu -> 0
    pMenu = menu;
    String m = '';
    m = menu[0].toString() +
        ',' +
        menu[1].toString() +
        ',' +
        menu[2].toString() +
        ',' +
        menu[3].toString() +
        ',' +
        menu[4].toString();
    ;
    print('PROVIDER $m');

    switch (m) {
      case '0,0,0,0,0':
        isPlaying = false;
        images = [
          ['lib/assets/miniaturas/3 metros.jpg', '3 metros'],
          ['lib/assets/miniaturas/4 metros.jpg', '4 metros'],
          ['lib/assets/miniaturas/5 metros.jpg', '5 metros'],
          ['lib/assets/miniaturas/6 metros.jpg', '6 metros'],
          ['lib/assets/miniaturas/ATLAS.JPG', 'ATLAS E IMAGENES DE REFERENCIA'],
          [
            'lib/assets/miniaturas/DEFECTOS REFRACTIVOS.jpg',
            'DEFECTOS REFRACTIVOS'
          ],
          ['lib/assets/miniaturas/MACULOPATIA.jpg', 'MACULOPATIA'],
          ['lib/assets/miniaturas/SA3000V.JPG', 'TEST DE ESTEREOPSIS'],
          ['lib/assets/miniaturas/SA3000V.JPG', 'TEST DE COLOR'],
          ['lib/assets/miniaturas/tipos de lentes.jpg', 'TITPOS DE LENTES']
        ];
        break;
      case '1,0,0,0,0':
        // Menu 3 metros

        images = [
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG'],
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', 'E DIR'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG'],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', 'NIÑOS'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10.JPG', 'LETRAS'],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', 'NUMEROS'],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14.JPG', 'E DIRECCIONAL'],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-6-rg.jpg', 'ROJO VERDE'],
          ['lib/assets/DIAL/0.JPG', 'DIAL'],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS'],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/miniaturas/videos de fijacion.jpg',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '1,1,0,0,0':
        images = [
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', ''],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/2.JPG', ''],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', ''],
        ];
        break;
      case '1,1,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,1,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,2,0,0,0':
        images = [
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/2.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/3.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/4.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/5.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/6.PNG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/1 LETRAS LOG/DIAL.JPG', '']
        ];
        break;
      case '1,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,3,0,0,0':
        images = [
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/2.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/3.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/4.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/5.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/6.PNG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/2 NUMEROS LOG/DIAL.JPG', '']
        ];

        break;
      case '1,3,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,3,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,4,0,0,0':
        images = [
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/2.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/3.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/4.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/5.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/6.PNG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/3 E DIR LOG/DIAL.JPG', '']
        ];

        break;

      case '1,4,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,4,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,5,0,0,0':
        images = [
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/2.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/3.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/4.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/5.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/6.PNG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/DIAL.JPG', ''],
        ];

        break;
      case '1,5,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,5,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,6,0,0,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/NLH/058.JPG', 'NLH'],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          ['lib/assets/miniaturas/videos de fijacion niños.jpg', 'VIDEOS'],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', '1'],
        ];
        break;
      case '1,6,1,0,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/NLH/058.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/060.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/061.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/062.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/063.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/064.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/065.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/066.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/067.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/068.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/069.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/070.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/071.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/072.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/073.JPG', ''],
        ];

        break;
      case '1,6,1,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,1,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,6,2,0,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg', ''],
        ];

        break;

      case '1,6,2,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,2,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,6,3,0,0':
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola'],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos'],
          ['lib/assets/PINOCHO.jpg', 'Pinocho']
        ];

        break;
      case '1,6,3,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '1,6,3,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,16,0':
        triggerVideo = true;
        break;
      case '1,6,3,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,3,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '1,6,4,0,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/2.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/3.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/4.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/5.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/6.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/7.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/8.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/9.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/10.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/11.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/12.PNG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/CROSSCYL.JPG', ''],
          ['lib/assets/3 METROS/5 NIÑOS/DIAL.JPG', '']
        ];

        break;

      case '1,6,4,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,4,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,7,0,0,0':
        images = [
          ['lib/assets/3 METROS/6 LETRAS/3_50-10.JPG', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10-h1.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10-h2.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11.JPG', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h1.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h2.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h3.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12.JPG', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h1.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h2.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h3.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13.JPG', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h1.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h2.jpg', ''],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h3.jpg', ''],
        ];

        break;

      case '1,7,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,7,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,8,0,0,0':
        images = [
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h3.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h3.jpg', ''],
        ];

        break;

      case '1,8,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,8,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,9,0,0,0':
        images = [
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14.JPG', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14-h1.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14-h2.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-15.JPG', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-15-h1.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-15-h2.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-15-h3.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-16.JPG', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-16-h1.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-16-h2.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-16-h3.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-17.JPG', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-17-h1.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-17-h2.jpg', ''],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-17-h3.jpg', ''],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14'],
        // ];

        break;

      case '1,9,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,9,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,10,0,0,0':
        images = [
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-6-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-7-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-8-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-9-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-10-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-11-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-12-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-13-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-14-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-15-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-16-rg.jpg', ''],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-17-rg.jpg', ''],
        ];

        break;

      case '1,10,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,10,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,11,0,0,0':
        images = [
          ['lib/assets/DIAL/0.JPG', ''],
          ['lib/assets/DIAL/10.JPG', ''],
          ['lib/assets/DIAL/20.JPG', ''],
          ['lib/assets/DIAL/30.JPG', ''],
          ['lib/assets/DIAL/40.JPG', ''],
          ['lib/assets/DIAL/50.JPG', ''],
          ['lib/assets/DIAL/60.JPG', ''],
          ['lib/assets/DIAL/70.JPG', ''],
          ['lib/assets/DIAL/80.JPG', ''],
          ['lib/assets/DIAL/90.JPG', ''],
          ['lib/assets/DIAL/100.JPG', ''],
          ['lib/assets/DIAL/110.JPG', ''],
          ['lib/assets/DIAL/120.JPG', ''],
          ['lib/assets/DIAL/130.JPG', ''],
          ['lib/assets/DIAL/140.JPG', ''],
          ['lib/assets/DIAL/150.JPG', ''],
          ['lib/assets/DIAL/160.JPG', ''],
          ['lib/assets/DIAL/170.JPG', ''],
        ];
        break;
      case '1,11,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,11,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

        break;
      case '1,12,0,0,0':
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', ''],
          ['lib/assets/HERRAMIENTAS/2.JPG', ''],
          ['lib/assets/HERRAMIENTAS/3.JPG', ''],
          ['lib/assets/HERRAMIENTAS/4.JPG', ''],
          ['lib/assets/HERRAMIENTAS/5.JPG', ''],
          ['lib/assets/HERRAMIENTAS/6.JPG', ''],
          ['lib/assets/HERRAMIENTAS/7.JPG', ''],
          ['lib/assets/HERRAMIENTAS/8.JPG', ''],
        ];

        break;
      case '1,12,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,12,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,12,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,0,0,0':
        //PRUEBAS Y AUUDAS DIAGNOSTICAS
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/002.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', ''],
        ];

        break;
      case '1,13,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,13,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,14,0,0,0':
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS'],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS']
        ];

        break;
      case '1,14,1,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,14,2,0,0':
        isPlaying = true;

        triggerVideo = true;
        break;
      case '1,14,3,0,0':
        isPlaying = true;

        triggerVideo = true;

        break;

      case '2,0,0,0,0':
        // Menu 4 METROS
        images = [
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/4 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG'],
          ['lib/assets/4 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG'],
          ['lib/assets/4 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG'],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG'],
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', 'NIÑOS'],
          ['lib/assets/4 METROS/6 LETRAS/4_50-10.JPG', 'LETRAS'],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-6.JPG', 'NUMEROS'],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14.JPG', 'E DIRECCIONAL'],
          ['lib/assets/4 METROS/11 ROJO-VERDE/4_50-6-rg.jpg', 'ROJO VERDE'],
          ['lib/assets/DIAL/0.JPG', 'DIAL'],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS'],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/miniaturas/videos de fijacion.jpg',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '2,1,0,0,0':
        images = [
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/1.JPG', ''],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/2.JPG', ''],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/3.JPG', ''],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', ''],
        ];
        break;
      case '2,1,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,1,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,2,0,0,0':
        images = [
          ['lib/assets/4 METROS/1 LETRAS LOG/1.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/2.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/3.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/4.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/5.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/6.PNG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/1 LETRAS LOG/DIAL.JPG', '']
        ];
        break;
      case '2,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,3,0,0,0':
        images = [
          ['lib/assets/4 METROS/2 NUMEROS LOG/1.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/2.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/3.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/4.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/5.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/6.PNG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/2 NUMEROS LOG/DIAL.JPG', '']
        ];

        break;
      case '2,3,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,3,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,4,0,0,0':
        images = [
          ['lib/assets/4 METROS/3 E DIR LOG/1.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/2.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/3.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/4.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/5.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/6.PNG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/3 E DIR LOG/DIAL.JPG', '']
        ];

        break;

      case '2,4,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,4,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,5,0,0,0':
        images = [
          ['lib/assets/4 METROS/4 C LANDOLT LOG/1.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/2.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/3.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/4.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/5.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/6.PNG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/DIAL.JPG', ''],
        ];

        break;
      case '2,5,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,5,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,6,0,0,0':
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/NLH/058.JPG', 'NLH'],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          ['lib/assets/miniaturas/videos de fijacion niños.jpg', 'VIDEOS'],
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', '1'],
        ];
        break;
      case '2,6,1,0,0':
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/NLH/058.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/060.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/061.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/062.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/063.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/064.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/065.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/066.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/067.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/068.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/069.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/070.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/071.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/072.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/073.JPG', ''],
        ];

        break;
      case '2,6,1,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,1,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,6,2,0,0':
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg', ''],
          ['lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg', ''],
          ['lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg', ''],
          ['lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg', ''],
          ['lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg', ''],
        ];

        break;

      case '2,6,2,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,2,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,6,3,0,0':
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola'],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos'],
          ['lib/assets/PINOCHO.jpg', 'Pinocho']
        ];

        break;
      case '2,6,3,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '2,6,3,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,16,0':
        triggerVideo = true;
        break;
      case '2,6,3,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,3,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '2,6,4,0,0':
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/2.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/3.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/4.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/5.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/6.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/7.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/8.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/9.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/10.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/11.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/12.PNG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/CROSSCYL.JPG', ''],
          ['lib/assets/4 METROS/5 NIÑOS/DIAL.JPG', '']
        ];

        break;

      case '2,6,4,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,4,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,7,0,0,0':
        images = [
          ['lib/assets/4 METROS/6 LETRAS/4_50-10.JPG', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-10-h1.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-10-h2.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-11.JPG', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-11-h1.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-11-h2.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-11-h3.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-12.JPG', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-12-h1.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-12-h2.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-12-h3.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-13.JPG', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-13-h1.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-13-h2.jpg', ''],
          ['lib/assets/4 METROS/6 LETRAS/4_50-13-h3.jpg', ''],
        ];

        break;

      case '2,7,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,7,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,8,0,0,0':
        images = [
          ['lib/assets/4 METROS/7 NUMEROS/4_50-6.JPG', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-7-h1.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-7-h2.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-7.JPG', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-8-h1.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-8-h2.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-8-h3.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-8.JPG', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-9-h1.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-9-h2.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-9-h3.jpg', ''],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-9.JPG', ''],
        ];

        break;

      case '2,8,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,8,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,9,0,0,0':
        images = [
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14.JPG', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14-h1.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14-h2.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-15.JPG', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-15-h1.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-15-h2.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-15-h3.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-16.JPG', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-16-h1.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-16-h2.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-16-h3.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-17.JPG', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-17-h1.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-17-h2.jpg', ''],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-17-h3.jpg', ''],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14'],
        // ];

        break;

      case '2,9,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,9,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,10,0,0,0':
        images = [
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-6-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-7-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-8-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-9-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-10-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-11-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-12-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-13-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-14-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-15-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-16-rg.jpg', ''],
          ['lib/assets/4 METROS/11 ROJO-VERDE/3_50-17-rg.jpg', ''],
        ];

        break;

      case '2,10,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,10,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,11,0,0,0':
        images = [
          ['lib/assets/DIAL/0.JPG', ''],
          ['lib/assets/DIAL/10.JPG', ''],
          ['lib/assets/DIAL/20.JPG', ''],
          ['lib/assets/DIAL/30.JPG', ''],
          ['lib/assets/DIAL/40.JPG', ''],
          ['lib/assets/DIAL/50.JPG', ''],
          ['lib/assets/DIAL/60.JPG', ''],
          ['lib/assets/DIAL/70.JPG', ''],
          ['lib/assets/DIAL/80.JPG', ''],
          ['lib/assets/DIAL/90.JPG', ''],
          ['lib/assets/DIAL/100.JPG', ''],
          ['lib/assets/DIAL/110.JPG', ''],
          ['lib/assets/DIAL/120.JPG', ''],
          ['lib/assets/DIAL/130.JPG', ''],
          ['lib/assets/DIAL/140.JPG', ''],
          ['lib/assets/DIAL/150.JPG', ''],
          ['lib/assets/DIAL/160.JPG', ''],
          ['lib/assets/DIAL/170.JPG', ''],
        ];
        break;
      case '2,11,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,11,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

        break;
      case '2,12,0,0,0':
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', ''],
          ['lib/assets/HERRAMIENTAS/2.JPG', ''],
          ['lib/assets/HERRAMIENTAS/3.JPG', ''],
          ['lib/assets/HERRAMIENTAS/4.JPG', ''],
          ['lib/assets/HERRAMIENTAS/5.JPG', ''],
          ['lib/assets/HERRAMIENTAS/6.JPG', ''],
          ['lib/assets/HERRAMIENTAS/7.JPG', ''],
          ['lib/assets/HERRAMIENTAS/8.JPG', ''],
        ];

        break;
      case '2,12,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,12,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,12,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,0,0,0':
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/002.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', ''],
        ];

        break;
      case '2,13,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,13,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,14,0,0,0':
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS'],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS']
        ];

        break;
      case '2,14,1,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,14,2,0,0':
        isPlaying = true;

        triggerVideo = true;
        break;
      case '2,14,3,0,0':
        isPlaying = true;

        triggerVideo = true;

        break;
      case '3,0,0,0,0':
        // Menu 5 METROS

        images = [
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/5 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG'],
          ['lib/assets/5 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG'],
          ['lib/assets/5 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG'],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG'],
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', 'NIÑOS'],
          ['lib/assets/5 METROS/6 LETRAS/5_50-10.JPG', 'LETRAS'],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-6.JPG', 'NUMEROS'],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14.JPG', 'E DIRECCIONAL'],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-6-rg.jpg', 'ROJO VERDE'],
          ['lib/assets/DIAL/0.JPG', 'DIAL'],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS'],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/miniaturas/videos de fijacion.jpg',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '3,1,0,0,0':
        images = [
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/1.JPG', ''],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/2.JPG', ''],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/3.JPG', ''],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', ''],
        ];
        break;
      case '3,1,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,1,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,2,0,0,0':
        images = [
          ['lib/assets/5 METROS/1 LETRAS LOG/1.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/2.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/3.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/4.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/5.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/6.PNG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/1 LETRAS LOG/DIAL.JPG', '']
        ];
        break;
      case '3,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,3,0,0,0':
        images = [
          ['lib/assets/5 METROS/2 NUMEROS LOG/1.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/2.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/3.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/4.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/5.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/6.PNG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/2 NUMEROS LOG/DIAL.JPG', '']
        ];

        break;
      case '3,3,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,3,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,4,0,0,0':
        images = [
          ['lib/assets/5 METROS/3 E DIR LOG/1.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/2.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/3.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/4.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/5.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/6.PNG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/3 E DIR LOG/DIAL.JPG', '']
        ];

        break;

      case '3,4,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,4,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,5,0,0,0':
        images = [
          ['lib/assets/5 METROS/4 C LANDOLT LOG/1.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/2.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/3.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/4.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/5.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/6.PNG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/DIAL.JPG', ''],
        ];

        break;
      case '3,5,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,5,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,6,0,0,0':
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/NLH/058.JPG', 'NLH'],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          ['lib/assets/miniaturas/videos de fijacion niños.jpg', 'VIDEOS'],
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', '1'],
        ];
        break;
      case '3,6,1,0,0':
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/NLH/058.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/060.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/061.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/062.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/063.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/064.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/065.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/066.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/067.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/068.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/069.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/070.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/071.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/072.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/073.JPG', ''],
        ];

        break;
      case '3,6,1,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,1,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,6,2,0,0':
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg', ''],
          ['lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg', ''],
          ['lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg', ''],
          ['lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg', ''],
          ['lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg', ''],
        ];

        break;

      case '3,6,2,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,2,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,6,3,0,0':
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola'],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos'],
          ['lib/assets/PINOCHO.jpg', 'Pinocho']
        ];

        break;
      case '3,6,3,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '3,6,3,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,16,0':
        triggerVideo = true;
        break;
      case '3,6,3,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,3,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '3,6,4,0,0':
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/2.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/3.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/4.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/5.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/6.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/7.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/8.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/9.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/10.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/11.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/12.PNG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/CROSSCYL.JPG', ''],
          ['lib/assets/5 METROS/5 NIÑOS/DIAL.JPG', '']
        ];

        break;

      case '3,6,4,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,4,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,7,0,0,0':
        images = [
          ['lib/assets/5 METROS/6 LETRAS/5_50-10.JPG', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-10-h1.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-10-h2.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-11.JPG', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-11-h1.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-11-h2.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-11-h3.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-12.JPG', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-12-h1.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-12-h2.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-12-h3.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-13.JPG', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-13-h1.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-13-h2.jpg', ''],
          ['lib/assets/5 METROS/6 LETRAS/5_50-13-h3.jpg', ''],
        ];

        break;

      case '3,7,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,7,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,8,0,0,0':
        images = [
          ['lib/assets/5 METROS/7 NUMEROS/5_50-6.JPG', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-7.JPG', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-7-h1.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-7-h2.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-8.JPG', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-8-h1.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-8-h2.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-8-h3.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-9.JPG', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-9-h1.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-9-h2.jpg', ''],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-9-h3.jpg', ''],
        ];

        break;

      case '3,8,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,8,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,9,0,0,0':
        images = [
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14.JPG', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14-h1.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14-h2.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-15.JPG', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-15-h1.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-15-h2.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-15-h3.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-16.JPG', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-16-h1.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-16-h2.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-16-h3.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-17.JPG', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-17-h1.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-17-h2.jpg', ''],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-17-h3.jpg', ''],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14'],
        // ];

        break;

      case '3,9,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,9,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,10,0,0,0':
        images = [
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-6-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-7-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-8-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-9-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-10-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-11-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-12-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-13-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-14-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-15-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-16-rg.jpg', ''],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-17-rg.jpg', ''],
        ];

        break;

      case '3,10,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,10,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,11,0,0,0':
        images = [
          ['lib/assets/DIAL/0.JPG', ''],
          ['lib/assets/DIAL/10.JPG', ''],
          ['lib/assets/DIAL/20.JPG', ''],
          ['lib/assets/DIAL/30.JPG', ''],
          ['lib/assets/DIAL/40.JPG', ''],
          ['lib/assets/DIAL/50.JPG', ''],
          ['lib/assets/DIAL/60.JPG', ''],
          ['lib/assets/DIAL/70.JPG', ''],
          ['lib/assets/DIAL/80.JPG', ''],
          ['lib/assets/DIAL/90.JPG', ''],
          ['lib/assets/DIAL/100.JPG', ''],
          ['lib/assets/DIAL/110.JPG', ''],
          ['lib/assets/DIAL/120.JPG', ''],
          ['lib/assets/DIAL/130.JPG', ''],
          ['lib/assets/DIAL/140.JPG', ''],
          ['lib/assets/DIAL/150.JPG', ''],
          ['lib/assets/DIAL/160.JPG', ''],
          ['lib/assets/DIAL/170.JPG', ''],
        ];
        break;
      case '3,11,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,11,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

        break;
      case '3,12,0,0,0':
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', ''],
          ['lib/assets/HERRAMIENTAS/2.JPG', ''],
          ['lib/assets/HERRAMIENTAS/3.JPG', ''],
          ['lib/assets/HERRAMIENTAS/4.JPG', ''],
          ['lib/assets/HERRAMIENTAS/5.JPG', ''],
          ['lib/assets/HERRAMIENTAS/6.JPG', ''],
          ['lib/assets/HERRAMIENTAS/7.JPG', ''],
          ['lib/assets/HERRAMIENTAS/8.JPG', ''],
        ];

        break;
      case '3,12,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,12,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,12,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,0,0,0':
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/002.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', ''],
        ];

        break;
      case '3,13,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,13,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,14,0,0,0':
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS'],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS']
        ];

        break;
      case '3,14,1,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,14,2,0,0':
        isPlaying = true;

        triggerVideo = true;
        break;
      case '3,14,3,0,0':
        isPlaying = true;

        triggerVideo = true;

        break;

      case '4,0,0,0,0':
        // Menu 6 METROS
        images = [
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/6 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG'],
          ['lib/assets/6 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG'],
          ['lib/assets/6 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG'],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG'],
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', 'NIÑOS'],
          ['lib/assets/6 METROS/6 LETRAS/6_50-10.JPG', 'LETRAS'],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-6.JPG', 'NUMEROS'],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14.JPG', 'E DIRECCIONAL'],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-6-rg.jpg', 'ROJO VERDE'],
          ['lib/assets/DIAL/0.JPG', 'DIAL'],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS'],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/miniaturas/videos de fijacion.jpg',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '4,1,0,0,0':
        images = [
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/1.JPG', ''],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/2.JPG', ''],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/3.JPG', ''],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', ''],
        ];
        break;
      case '4,1,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,1,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,2,0,0,0':
        images = [
          ['lib/assets/6 METROS/1 LETRAS LOG/1.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/2.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/3.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/4.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/5.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/6.PNG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/1 LETRAS LOG/DIAL.JPG', '']
        ];
        break;
      case '4,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,3,0,0,0':
        images = [
          ['lib/assets/6 METROS/2 NUMEROS LOG/1.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/2.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/3.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/4.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/5.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/6.PNG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/2 NUMEROS LOG/DIAL.JPG', '']
        ];

        break;
      case '4,3,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,3,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,4,0,0,0':
        images = [
          ['lib/assets/6 METROS/3 E DIR LOG/1.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/2.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/3.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/4.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/5.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/6.PNG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/3 E DIR LOG/DIAL.JPG', '']
        ];

        break;

      case '4,4,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,4,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,5,0,0,0':
        images = [
          ['lib/assets/6 METROS/4 C LANDOLT LOG/1.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/2.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/3.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/4.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/5.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/6.PNG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/DIAL.JPG', ''],
        ];

        break;
      case '4,5,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,5,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,6,0,0,0':
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/NLH/059.JPG', 'NLH'],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          ['lib/assets/miniaturas/videos de fijacion niños.jpg', 'VIDEOS'],
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', '1'],
        ];
        break;
      case '4,6,1,0,0':
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/NLH/059.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/060.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/061.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/062.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/063.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/064.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/065.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/066.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/067.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/068.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/069.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/070.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/071.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/072.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/073.JPG', ''],
        ];

        break;
      case '4,6,1,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,1,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,6,2,0,0':
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg', ''],
          ['lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg', ''],
          ['lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg', ''],
          ['lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg', ''],
          ['lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg', ''],
        ];

        break;

      case '4,6,2,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,2,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,6,3,0,0':
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola'],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos'],
          ['lib/assets/PINOCHO.jpg', 'Pinocho']
        ];

        break;
      case '4,6,3,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '4,6,3,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,16,0':
        triggerVideo = true;
        break;
      case '4,6,3,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,3,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '4,6,4,0,0':
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/2.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/3.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/4.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/5.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/6.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/7.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/8.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/9.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/10.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/11.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/12.PNG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/CROSSCYL.JPG', ''],
          ['lib/assets/6 METROS/5 NIÑOS/DIAL.JPG', '']
        ];

        break;

      case '4,6,4,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,4,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,7,0,0,0':
        images = [
          ['lib/assets/6 METROS/6 LETRAS/6_50-10.JPG', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-10-h1.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-10-h2.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-11.JPG', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-11-h1.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-11-h2.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-11-h3.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-12.JPG', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-12-h1.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-12-h2.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-12-h3.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-13.JPG', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-13-h1.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-13-h2.jpg', ''],
          ['lib/assets/6 METROS/6 LETRAS/6_50-13-h3.jpg', ''],
        ];

        break;

      case '4,7,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,7,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,8,0,0,0':
        images = [
          ['lib/assets/6 METROS/7 NUMEROS/6_50-6.JPG', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-7-h1.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-7-h2.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-7.JPG', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-8-h1.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-8-h2.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-8-h3.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-8.JPG', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-9-h1.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-9-h2.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-9-h3.jpg', ''],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-9.JPG', ''],
        ];

        break;

      case '4,8,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,8,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,9,0,0,0':
        images = [
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14.JPG', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14-h1.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14-h2.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-15.JPG', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-15-h1.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-15-h2.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-15-h3.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-16.JPG', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-16-h1.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-16-h2.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-16-h3.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-17.JPG', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-17-h1.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-17-h2.jpg', ''],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-17-h3.jpg', ''],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13'],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14'],
        // ];

        break;

      case '4,9,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,9,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,10,0,0,0':
        images = [
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-6-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-7-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-8-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-9-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-10-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-11-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-12-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-13-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-14-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-15-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-16-rg.jpg', ''],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-17-rg.jpg', ''],
        ];

        break;

      case '4,10,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,10,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,11,0,0,0':
        images = [
          ['lib/assets/DIAL/0.JPG', ''],
          ['lib/assets/DIAL/10.JPG', ''],
          ['lib/assets/DIAL/20.JPG', ''],
          ['lib/assets/DIAL/30.JPG', ''],
          ['lib/assets/DIAL/40.JPG', ''],
          ['lib/assets/DIAL/50.JPG', ''],
          ['lib/assets/DIAL/60.JPG', ''],
          ['lib/assets/DIAL/70.JPG', ''],
          ['lib/assets/DIAL/80.JPG', ''],
          ['lib/assets/DIAL/90.JPG', ''],
          ['lib/assets/DIAL/100.JPG', ''],
          ['lib/assets/DIAL/110.JPG', ''],
          ['lib/assets/DIAL/120.JPG', ''],
          ['lib/assets/DIAL/130.JPG', ''],
          ['lib/assets/DIAL/140.JPG', ''],
          ['lib/assets/DIAL/150.JPG', ''],
          ['lib/assets/DIAL/160.JPG', ''],
          ['lib/assets/DIAL/170.JPG', ''],
        ];
        break;
      case '4,11,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,11,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

        break;
      case '4,12,0,0,0':
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', ''],
          ['lib/assets/HERRAMIENTAS/2.JPG', ''],
          ['lib/assets/HERRAMIENTAS/3.JPG', ''],
          ['lib/assets/HERRAMIENTAS/4.JPG', ''],
          ['lib/assets/HERRAMIENTAS/5.JPG', ''],
          ['lib/assets/HERRAMIENTAS/6.JPG', ''],
          ['lib/assets/HERRAMIENTAS/7.JPG', ''],
          ['lib/assets/HERRAMIENTAS/8.JPG', ''],
        ];

        break;
      case '4,12,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,12,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '4,12,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,0,0,0':
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/002.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', ''],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', ''],
        ];

        break;
      case '4,13,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,13,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,14,0,0,0':
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS'],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS']
        ];

        break;
      case '4,14,1,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,14,2,0,0':
        isPlaying = true;

        triggerVideo = true;
        break;
      case '4,14,3,0,0':
        isPlaying = true;

        triggerVideo = true;

        break;
      case '5,0,0,0,0':
        // atlas
        images = [
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/0 OJO.jpg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/1 ANATOMIA DEL OJO.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/2 OJO ANATOMICO.jpg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/3  MUSCULOS OCULARES 2.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/4  MUSCULOS OCULARES.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/19 ESTRABISMOS.jpg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/20 FONDO DE OJO SANO.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/21 FONDO DE OJO SANO 2.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/BLEFARITIS.jpg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/CATARATA.JPG', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/CHALAZION.jpg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUNTIVITIS ALERGICA.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUNTIVITIS BACTERIANA.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUTIVITIS PAPILAR.jpeg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CUERPO EXTRAÑO EN CONJUNTIVA TARSAL.jpeg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CUERPO EXTRAÑO EN CORNEA.jpeg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/DACRIOSISTITIS.jpeg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/depositos corneales 2.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/dermatochalasis 2.jpeg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/EPICANTO.JPG', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/GLAUCOMA.JPG', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/HEMORRAGIA SUBCONJUNTIVAL.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/HERPES OCULAR.jpeg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/NEVUS.JPG', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/orzuelo 1.jpeg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/orzuelo 2.jpeg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/pinguecula 1.jpeg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/PTERIGION 1.jpg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/pterigion 2.jpg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/ptosis 1.jpeg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/queratitis 1.jpeg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/queratitis herpetica.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/QUERATOCONO.jpg', ''],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/QUERATOGLOBO.jpeg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/RETINOPATIA DIABETICA 1.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/RETINOPATIA DIABETICA.jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia hipertensiva.jpeg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia-diabetica (2).jpg',
            ''
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia-diabetica.jpg',
            ''
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/toxoplasmosis 2.jpg', ''],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/ULCERA CORNEAL 1.jpg',
            ''
          ],
        ];
        break;
      case '5,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,20,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,0,0,0,0':
        //Defectos
        images = [
          ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', ''],
          ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', ''],
        ];
        break;
      case '6,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,20,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,0,0,0,0':
        images = [
          ['lib/assets/MACULOPATIA/1.JPG', ''],
          ['lib/assets/MACULOPATIA/2.JPG', ''],
          ['lib/assets/MACULOPATIA/3.JPG', ''],
          ['lib/assets/MACULOPATIA/4.JPG', ''],
          ['lib/assets/MACULOPATIA/5.JPG', ''],
          ['lib/assets/MACULOPATIA/6.JPG', ''],
        ];
        break;
      case '7,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '7,20,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,0,0,0,0':
        images = [
          ['lib/assets/TEST DE STEREOPSIS/1_R.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/1.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/2.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/3.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/4.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/5.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/6.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/6.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/7.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/7.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/8_R.PNG', ''],
          ['lib/assets/TEST DE STEREOPSIS/8.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/9.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/12.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/13.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/21.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/22.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/23.JPG', ''],
          ['lib/assets/TEST DE STEREOPSIS/24.JPG', ''],
        ];
        break;
      case '8,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '8,20,0,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      case '9,0,0,0,0':
        images = [
          ['lib/assets/TESTD/FONDO BLANCO/1.PNG', 'FONDO BLANCO'],
          ['lib/assets/TESTD/FONDO NEGRO/1.PNG', 'FONDO NEGRO']
        ];
        break;
      case '9,1,0,0,0':
        images = [
          ['lib/assets/TESTD/FONDO BLANCO/1.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/2.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/3.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/4.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/5.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/6.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/7.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/8.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/9.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/10.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/11.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/12.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/13.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/14.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/15.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/16.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/17.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/18.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/19.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/20.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/21.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/22.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/23.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/24.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/25.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/26.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/27.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/28.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/29.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/30.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/31.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/32.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/33.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/34.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/35.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/36.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/37.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/38.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/39.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/40.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/41.JPG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/42.PNG', ''],
          ['lib/assets/TESTD/FONDO BLANCO/43.JPG', ''],
        ];
        break;
      case '9,1,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,21,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,22,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,23,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,24,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,25,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,26,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,27,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,28,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,29,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,30,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,31,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,32,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,33,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,34,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      case '9,1,35,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,36,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,37,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,38,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,39,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,40,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,41,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,42,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,43,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,1,44,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,0,0,0':
        images = [
          ['lib/assets/TESTD/FONDO NEGRO/1.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/2.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/3.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/4.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/5.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/6.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/7.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/8.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/9.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/10.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/11.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/12.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/13.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/14.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/15.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/16.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/17.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/18.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/19.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/20.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/21.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/22.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/23.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/24.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/25.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/26.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/27.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/28.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/29.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/30.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/31.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/32.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/33.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/34.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/35.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/36.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/37.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/38.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/39.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/40.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/41.JPG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/42.PNG', ''],
          ['lib/assets/TESTD/FONDO NEGRO/43.JPG', ''],
        ];
        break;
      case '9,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,21,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,22,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,23,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,24,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,25,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,26,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,27,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,28,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,29,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,30,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,31,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,32,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,33,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,34,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      case '9,2,35,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,36,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,37,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,38,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,39,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,40,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,41,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,42,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,43,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,44,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,0,0,0,0':
        images = [
          ['lib/assets/TIPOS DE LENTES/ANTIRREFLEJO 1.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/ANTIRREFLEJO 2.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/BIFOCAL FLAT TOP.jpg', ''],
          [
            'lib/assets/TIPOS DE LENTES/ERGONOMIA FRENTE AL COMPUTADOR 2.jpg',
            ''
          ],
          ['lib/assets/TIPOS DE LENTES/ERGONOMIA FRENTE AL COMPUTADOR.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/LENTE DE CONTACTO BLANDO.jpeg', ''],
          [
            'lib/assets/TIPOS DE LENTES/LENTE DE CONTACTO GAS PERMEABLE.jpeg',
            ''
          ],
          ['lib/assets/TIPOS DE LENTES/LENTE PROGRESIVO 1.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/LENTE PROGRESIVO 2.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/LENTE PROGRESIVO 3.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/POLARIZADO 1.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/POLARIZADO 2.jpg', ''],
          ['lib/assets/TIPOS DE LENTES/TransitionsLensColors.jpg', '']
        ];
        break;

      case '10,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,20,0,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      default:
    }
  }
}
