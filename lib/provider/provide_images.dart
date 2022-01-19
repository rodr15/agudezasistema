import 'package:flutter/material.dart';

class ProvideImages with ChangeNotifier {
  bool moveZoom = false;
  bool triggerVideo = false;
  bool triggerImage = false;
  bool isPlaying = false;
  String ruta = 'Menu Principal';
  List pMenu = [0, 0, 0, 0, 0];
  List images = [
          ['lib/assets/Menu Principal/3 metros.jpg', '3 metros', 0],
          ['lib/assets/Menu Principal/4 metros.jpg', '4 metros', 0],
          ['lib/assets/Menu Principal/5 metros.jpg', '5 metros', 0],
          ['lib/assets/Menu Principal/6 metros.jpg', '6 metros', 0],
          [
            'lib/assets/Menu Principal/ATLAS.png',
            'ATLAS E IMAGENES DE REFERENCIA',
            0
          ],
          [
            'lib/assets/Menu Principal/DEFECTOS REFRACTIVOS.png',
            'DEFECTOS REFRACTIVOS'
          ],
          ['lib/assets/Menu Principal/MACULOPATIA.jpg', 'MACULOPATIA', 0],
          [
            'lib/assets/Menu Principal/estereopsis.png',
            'TEST DE ESTEREOPSIS',
            0
          ],
          ['lib/assets/Menu Principal/ISHIHARA.png', 'TEST DE COLOR', 0],
          [
            'lib/assets/Menu Principal/TIPOS DE LENTES.png',
            'TIPOS DE LENTES',
            0
          ]
        ];
  get getRuta {
    return ruta;
  }

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

  get getMoveZoom {
    return moveZoom;
  }

  set setMoveZoom(bool nMove) {
    moveZoom = nMove;
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
        ruta = 'Menu principal';
        isPlaying = false;
        images = [
          ['lib/assets/Menu Principal/3 metros.jpg', '3 metros', 0],
          ['lib/assets/Menu Principal/4 metros.jpg', '4 metros', 0],
          ['lib/assets/Menu Principal/5 metros.jpg', '5 metros', 0],
          ['lib/assets/Menu Principal/6 metros.jpg', '6 metros', 0],
          [
            'lib/assets/Menu Principal/ATLAS.png',
            'ATLAS E IMAGENES DE REFERENCIA',
            0
          ],
          [
            'lib/assets/Menu Principal/DEFECTOS REFRACTIVOS.png',
            'DEFECTOS REFRACTIVOS'
          ],
          ['lib/assets/Menu Principal/MACULOPATIA.jpg', 'MACULOPATIA', 0],
          [
            'lib/assets/Menu Principal/estereopsis.png',
            'TEST DE ESTEREOPSIS',
            0
          ],
          ['lib/assets/Menu Principal/ISHIHARA.png', 'TEST DE COLOR', 0],
          [
            'lib/assets/Menu Principal/TIPOS DE LENTES.png',
            'TIPOS DE LENTES',
            0
          ]
        ];
        break;
      case '1,0,0,0,0':
        // Menu 3 metros
        ruta = '3 metros';
        images = [
          [
            'lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG',
            'OPTOTIPO SNELLEN',
            0
          ],
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG', 0],
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG', 0],
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', 'E DIR', 0],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG', 0],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', 'NIÑOS', 0],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10.JPG', 'LETRAS', 0],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', 'NUMEROS', 0],
          [
            'lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14.JPG',
            'E DIRECCIONAL',
            0
          ],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-6-rg.jpg', 'ROJO VERDE', 0],
          ['lib/assets/DIAL/0.JPG', 'DIAL', 0],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS', 0],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/3M001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS',0
          ],
          [
            'lib/assets/Menu Principal/VIDEOS FIJACION.png',
            'VIDEOS PUNTOS DE FIJACION',0
          ],
        ];
        break;
      case '1,1,0,0,0':
        ruta = '3 metros | optotipo Snell';
        images = [
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', '1', 0],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/2.JPG', '2', 0],
          [
            'lib/assets/3 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG',
            'CROSSCYL',
            0
          ],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', 'DIAL', 0],
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
        ruta = '3 metros | Letras Log';
        images = [
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', '1', 70],
          ['lib/assets/3 METROS/1 LETRAS LOG/2.PNG', '2', 70],
          ['lib/assets/3 METROS/1 LETRAS LOG/3.PNG', '3', 70],
          ['lib/assets/3 METROS/1 LETRAS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/3 METROS/1 LETRAS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '3 metros | NUMEROS LOG';
        images = [
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', '1', 70],
          ['lib/assets/3 METROS/2 NUMEROS LOG/2.PNG', '2', 70],
          ['lib/assets/3 METROS/2 NUMEROS LOG/3.PNG', '3', 70],
          ['lib/assets/3 METROS/2 NUMEROS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/3 METROS/2 NUMEROS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '3 metros | E DIR LOG';
        images = [
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', '1', 70],
          ['lib/assets/3 METROS/3 E DIR LOG/2.PNG', '2', 70],
          ['lib/assets/3 METROS/3 E DIR LOG/3.PNG', '3', 70],
          ['lib/assets/3 METROS/3 E DIR LOG/CROSSCYL.JPG', 'crosscyl', 0],
          ['lib/assets/3 METROS/3 E DIR LOG/DIAL.JPG', 'dial', 0]
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
        ruta = '3 metros | c landolt log';
        images = [
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', '1', 70],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/2.PNG', '2', 70],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/3.PNG', '3', 70],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', 'crosscyl', 0],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/DIAL.JPG', 'dial', 0],
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
        ruta = '3 metros | NIÑOS';
        images = [
          [
            'lib/assets/Menu Principal/videos de fijacion niños.jpg',
            'VIDEOS',
            0
          ],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/058.JPG', 'NEWYORK LIGHT HOUSE', 0],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', 'OPTOTIPOS', 0],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
        ];
        break;

      case '1,6,1,0,0':
        ruta = '3 metros | NIÑOS | VIDEOS';
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola', 0],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos', 0],
          ['lib/assets/PINOCHO.jpg', 'Pinocho', 0]
        ];

        break;
      case '1,6,1,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '1,6,1,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,16,0':
        triggerVideo = true;
        break;
      case '1,6,1,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '1,6,1,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '1,6,2,0,0':
        ruta = '3 metros | NIÑOS | NLH';
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/NLH/058.JPG', '20/400', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/060.JPG', '20/200', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/061.JPG', '20/160', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/062.JPG', '20/125', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/063.JPG', '20/100', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/064.JPG', '20/80', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/065.JPG', '20/63', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/066.JPG', '20/50', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/067.JPG', '20/40', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/068.JPG', '20/32', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/069.JPG', '20/25', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/070.JPG', '20/20', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/071.JPG', '20/16', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/072.JPG', 'DIAL ', 0],
          ['lib/assets/3 METROS/5 NIÑOS/NLH/073.JPG', 'CROSSCYL', 0],
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
        ruta = '3 metros | NIÑOS | Optotipos';
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', 'SNELL 1', 70],
          ['lib/assets/3 METROS/5 NIÑOS/2.PNG', 'SNELL 2', 70],
          ['lib/assets/3 METROS/5 NIÑOS/3.PNG', 'SNELL 3', 70],
          ['lib/assets/3 METROS/5 NIÑOS/4.PNG', 'NLH 1', 70],
          ['lib/assets/3 METROS/5 NIÑOS/5.PNG', 'NLH 2', 70],
          ['lib/assets/3 METROS/5 NIÑOS/6.PNG', 'NLH 3', 70],
          ['lib/assets/3 METROS/5 NIÑOS/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/3 METROS/5 NIÑOS/DIAL.JPG', 'DIAL', 0]
        ];

        break;

      case '1,6,3,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '1,6,3,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '1,6,4,0,0':
        ruta = '3 metros | NIÑOS | TEST DE COLOR';
        images = [
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            '',
            0
          ],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg',
            '',
            0
          ],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg',
            '',
            0
          ],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg',
            '',
            0
          ],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg',
            '',
            0
          ],
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
        ruta = '3 metros | LETRAS';
        images = [
          ['lib/assets/3 METROS/6 LETRAS/3_50-10.JPG', '20/200 - 100', 2],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11.JPG', '20/80 - 60', 3],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12.JPG', '20/50 - 30', 3],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13.JPG', '20/25 - 15', 3],
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
        ruta = '3 metros | NUMEROS';
        images = [
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', '20/400', -1],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7.JPG', '20/200 - 100', 2],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8.JPG', '20/50 - 30', 3],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9.JPG', '20/25 - 15', 3],
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
        ruta = '3 metros | E DIRECCIONAL';
        images = [
          [
            'lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14.JPG',
            '20/200 - 100',
            2
          ],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-15.JPG', '20/80 - 60', 3],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-16.JPG', '20/50 - 30', 3],
          ['lib/assets/3 METROS/8 E DIRECCIONAL/3_50-17.JPG', '20/25 - 15', 3],
        ];

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
        ruta = '3 metros | ROJO VERDE';
        images = [
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-6-rg.jpg',
            'NUMEROS | 20/400',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-7-rg.jpg',
            'NUMEROS | 20/200 - 100',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-8-rg.jpg',
            'NUMEROS | 20/50 - 30',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-9-rg.jpg',
            'NUMEROS | 20/25 - 15',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-10-rg.jpg',
            'LETRAS | 20/200 - 100',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-11-rg.jpg',
            'LETRAS | 20/80 - 60',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-12-rg.jpg',
            'LETRAS | 20/50 - 30',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-13-rg.jpg',
            'LETRAS | 20/25 - 15',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-14-rg.jpg',
            'E DIRECCIONAL | 20/200 - 100',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-15-rg.jpg',
            'E DIRECCIONAL | 20/80 - 60',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-16-rg.jpg',
            'E DIRECCIONAL | 20/50 - 30',
            0
          ],
          [
            'lib/assets/3 METROS/11 ROJO-VERDE/3_50-17-rg.jpg',
            'E DIRECCIONAL | 20/25 - 15',
            0
          ],
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
        ruta = '3 metros | DIAL';
        images = [
          ['lib/assets/DIAL/0.JPG', '0', 0],
          ['lib/assets/DIAL/10.JPG', '10', 0],
          ['lib/assets/DIAL/20.JPG', '20', 0],
          ['lib/assets/DIAL/30.JPG', '30', 0],
          ['lib/assets/DIAL/40.JPG', '40', 0],
          ['lib/assets/DIAL/50.JPG', '50', 0],
          ['lib/assets/DIAL/60.JPG', '60', 0],
          ['lib/assets/DIAL/70.JPG', '70', 0],
          ['lib/assets/DIAL/80.JPG', '80', 0],
          ['lib/assets/DIAL/90.JPG', '90', 0],
          ['lib/assets/DIAL/100.JPG', '100', 0],
          ['lib/assets/DIAL/110.JPG', '110', 0],
          ['lib/assets/DIAL/120.JPG', '120', 0],
          ['lib/assets/DIAL/130.JPG', '130', 0],
          ['lib/assets/DIAL/140.JPG', '140', 0],
          ['lib/assets/DIAL/150.JPG', '150', 0],
          ['lib/assets/DIAL/160.JPG', '160', 0],
          ['lib/assets/DIAL/170.JPG', '170', 0],
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

      case '1,12,0,0,0':
        ruta = '3 metros | HERRAMIENTAS';
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS 1', 70],
          ['lib/assets/HERRAMIENTAS/3.JPG', 'HERRAMIENTAS 2', 70],
          ['lib/assets/HERRAMIENTAS/5.JPG', 'HERRAMIENTAS 3', 70],
          ['lib/assets/HERRAMIENTAS/7.JPG', 'HERRAMIENTAS 4', 0],
          ['lib/assets/HERRAMIENTAS/8.JPG', 'HERRAMIENTAS 5', 0],
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
        ruta = '3 metros | PRUEBAS Y AYUDAS DIAGNOSTICAS';
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/3M001.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/3M002.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', '', 0],
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
        ruta = '3 metros | PUNTOS DE FIJACION';
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS', 0],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS', 0]
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
        ruta = '4 METROS';
        images = [
          [
            'lib/assets/4 METROS/0 OPTOTIPO SNELLEN/1.JPG',
            'OPTOTIPO SNELLEN',
            0
          ],
          ['lib/assets/4 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG', 0],
          ['lib/assets/4 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG', 0],
          ['lib/assets/4 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG', 0],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG', 0],
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', 'NIÑOS', 0],
          ['lib/assets/4 METROS/6 LETRAS/4_50-10.JPG', 'LETRAS', 0],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-6.JPG', 'NUMEROS', 0],
          [
            'lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14.JPG',
            'E DIRECCIONAL',
            0
          ],
          ['lib/assets/4 METROS/11 ROJO-VERDE/4_50-6-rg.jpg', 'ROJO VERDE', 0],
          ['lib/assets/DIAL/0.JPG', 'DIAL', 0],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS', 0],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/4M001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/Menu Principal/VIDEOS FIJACION.png',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '2,1,0,0,0':
        ruta = '4 METROS | OPTOTIPO SNELLEN';
        images = [
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/1.JPG', '1', 0],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/2.JPG', '2', 0],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/3.JPG', '3', 0],
          [
            'lib/assets/4 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG',
            'crosscyl',
            0
          ],
          ['lib/assets/4 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', 'dial', 0],
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
        ruta = '4 METROS | letras log';
        images = [
          ['lib/assets/4 METROS/1 LETRAS LOG/1.PNG', '1', 70],
          ['lib/assets/4 METROS/1 LETRAS LOG/2.PNG', '2', 70],
          ['lib/assets/4 METROS/1 LETRAS LOG/3.PNG', '3', 70],
          ['lib/assets/4 METROS/1 LETRAS LOG/CROSSCYL.JPG', 'crosscyl', 0],
          ['lib/assets/4 METROS/1 LETRAS LOG/DIAL.JPG', 'dial', 0]
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
        ruta = '4 METROS | numeros log';
        images = [
          ['lib/assets/4 METROS/2 NUMEROS LOG/1.PNG', '1', 70],
          ['lib/assets/4 METROS/2 NUMEROS LOG/2.PNG', '2', 70],
          ['lib/assets/4 METROS/2 NUMEROS LOG/3.PNG', '3', 70],
          ['lib/assets/4 METROS/2 NUMEROS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/4 METROS/2 NUMEROS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '4 METROS | e dir log';
        images = [
          ['lib/assets/4 METROS/3 E DIR LOG/1.PNG', '1', 70],
          ['lib/assets/4 METROS/3 E DIR LOG/2.PNG', '2', 70],
          ['lib/assets/4 METROS/3 E DIR LOG/3.PNG', '3', 70],
          ['lib/assets/4 METROS/3 E DIR LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/4 METROS/3 E DIR LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '4 METROS | c landolt log';
        images = [
          ['lib/assets/4 METROS/4 C LANDOLT LOG/1.PNG', '1', 70],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/2.PNG', '2', 70],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/3.PNG', '3', 70],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/4 METROS/4 C LANDOLT LOG/DIAL.JPG', 'DIAL', 0],
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
        ruta = '4 METROS | niños';
        images = [
          [
            'lib/assets/Menu Principal/videos de fijacion niños.jpg',
            'VIDEOS',
            0
          ],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/058.JPG', 'NEWYORK LIGHT HOUSE', 0],
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', 'OPTOTIPOS', 0],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR',
            0
          ],
        ];
        break;

      case '2,6,1,0,0':
        ruta = '4 metros | NIÑOS | VIDEOS';
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola', 0],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos', 0],
          ['lib/assets/PINOCHO.jpg', 'Pinocho', 0]
        ];

        break;
      case '2,6,1,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '2,6,1,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,16,0':
        triggerVideo = true;
        break;
      case '2,6,1,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '2,6,1,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '2,6,2,0,0':
        ruta = '4 METROS | niños | nlh';
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/NLH/058.JPG', '20/400', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/060.JPG', '20/200', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/061.JPG', '20/160', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/062.JPG', '20/125', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/063.JPG', '20/100', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/064.JPG', '20/80', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/065.JPG', '20/63', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/066.JPG', '20/50', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/067.JPG', '20/40', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/068.JPG', '20/32', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/069.JPG', '20/25', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/070.JPG', '20/20', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/071.JPG', '20/16', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/072.JPG', 'DIAL', 0],
          ['lib/assets/4 METROS/5 NIÑOS/NLH/073.JPG', 'CROSSCYL', 0],
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
        ruta = '4 METROS | niños | OPTOTIPOS ';
        images = [
          ['lib/assets/4 METROS/5 NIÑOS/1.PNG', 'SNELL 1', 70],
          ['lib/assets/4 METROS/5 NIÑOS/2.PNG', 'SNELL 2', 70],
          ['lib/assets/4 METROS/5 NIÑOS/3.PNG', 'SNELL 3', 70],
          ['lib/assets/4 METROS/5 NIÑOS/4.PNG', 'NLH 1', 70],
          ['lib/assets/4 METROS/5 NIÑOS/5.PNG', 'NLH 2', 70],
          ['lib/assets/4 METROS/5 NIÑOS/6.PNG', 'NLH 3', 70],
          ['lib/assets/4 METROS/5 NIÑOS/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/4 METROS/5 NIÑOS/DIAL.JPG', 'DIAL', 0]
        ];

        break;

      case '2,6,3,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '2,6,3,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '2,6,4,0,0':
        ruta = '4 METROS | niños | test de color';
        images = [
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            '',
            0
          ],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg',
            '',
            0
          ],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg',
            '',
            0
          ],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg',
            '',
            0
          ],
          [
            'lib/assets/4 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg',
            '',
            0
          ],
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
        ruta = '4 metros | letras';
        images = [
          ['lib/assets/4 METROS/6 LETRAS/4_50-10.JPG', '20/200 - 100', 2],
          ['lib/assets/4 METROS/6 LETRAS/4_50-11.JPG', '20/80 - 60', 3],
          ['lib/assets/4 METROS/6 LETRAS/4_50-12.JPG', '20/50 - 30', 3],
          ['lib/assets/4 METROS/6 LETRAS/4_50-13.JPG', '20/25 - 15', 3],
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
        ruta = '4 METROS | numeros';
        images = [
          ['lib/assets/4 METROS/7 NUMEROS/4_50-6.JPG', '20/400', -1],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-7.JPG', '20/200 - 100', 2],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-8.JPG', '20/50 - 30', 3],
          ['lib/assets/4 METROS/7 NUMEROS/4_50-9.JPG', '20/25 - 15', 3],
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
        ruta = '4 METROS | e direccional';
        images = [
          [
            'lib/assets/4 METROS/8 E DIRECCIONAL/4_50-14.JPG',
            '20/200 - 100',
            2
          ],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-15.JPG', '20/80 - 60', 3],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-16.JPG', '20/50 - 30', 3],
          ['lib/assets/4 METROS/8 E DIRECCIONAL/4_50-17.JPG', '20/25 - 15', 3],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14',0],
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
        ruta = '4 METROS | rojo - verde';
        images = [
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-6-rg.jpg',
            'NUMEROS | 20/400',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-7-rg.jpg',
            'NUMEROS | 20/200 - 100',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-8-rg.jpg',
            'NUMEROS | 20/50 - 30',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-9-rg.jpg',
            'NUMEROS | 20/25 - 15',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-10-rg.jpg',
            'LETRAS | 20/200 - 100',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-11-rg.jpg',
            'LETRAS | 20/80 - 60',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-12-rg.jpg',
            'LETRAS | 20/50 - 30',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-13-rg.jpg',
            'LETRAS | 20/25 - 15',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-14-rg.jpg',
            'E DIRECCIONAL | 20/200 - 100',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-15-rg.jpg',
            'E DIRECCIONAL | 20/80 - 60',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-16-rg.jpg',
            'E DIRECCIONAL | 20/50 - 30',
            0
          ],
          [
            'lib/assets/4 METROS/11 ROJO-VERDE/4_50-17-rg.jpg',
            'E DIRECCIONAL | 20/25 - 15',
            0
          ],
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
        ruta = '4 METROS | dial';
        images = [
          ['lib/assets/DIAL/0.JPG', '0', 0],
          ['lib/assets/DIAL/10.JPG', '10', 0],
          ['lib/assets/DIAL/20.JPG', '20', 0],
          ['lib/assets/DIAL/30.JPG', '30', 0],
          ['lib/assets/DIAL/40.JPG', '40', 0],
          ['lib/assets/DIAL/50.JPG', '50', 0],
          ['lib/assets/DIAL/60.JPG', '60', 0],
          ['lib/assets/DIAL/70.JPG', '70', 0],
          ['lib/assets/DIAL/80.JPG', '80', 0],
          ['lib/assets/DIAL/90.JPG', '90', 0],
          ['lib/assets/DIAL/100.JPG', '100', 0],
          ['lib/assets/DIAL/110.JPG', '110', 0],
          ['lib/assets/DIAL/120.JPG', '120', 0],
          ['lib/assets/DIAL/130.JPG', '130', 0],
          ['lib/assets/DIAL/140.JPG', '140', 0],
          ['lib/assets/DIAL/150.JPG', '150', 0],
          ['lib/assets/DIAL/160.JPG', '160', 0],
          ['lib/assets/DIAL/170.JPG', '170', 0],
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

      case '2,12,0,0,0':
        ruta = '4 METROS | herramientas';
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS 1', 70],
          ['lib/assets/HERRAMIENTAS/3.JPG', 'HERRAMIENTAS 2', 70],
          ['lib/assets/HERRAMIENTAS/5.JPG', 'HERRAMIENTAS 3', 70],
          ['lib/assets/HERRAMIENTAS/7.JPG', 'HERRAMIENTAS 4', 0],
          ['lib/assets/HERRAMIENTAS/8.JPG', 'HERRAMIENTAS 5', 0],
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
        ruta = '4 METROS | pruebas y ayudas diagnosticas';
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/4M001.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/4M002.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', '', 0],
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
        ruta = '4 METROS | puntos de fijación';
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS', 0],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS', 0]
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
        ruta = '5 METROS';
        images = [
          [
            'lib/assets/5 METROS/0 OPTOTIPO SNELLEN/1.JPG',
            'OPTOTIPO SNELLEN',
            0
          ],
          ['lib/assets/5 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG', 0],
          ['lib/assets/5 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG', 0],
          ['lib/assets/5 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG', 0],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG', 0],
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', 'NIÑOS', 0],
          ['lib/assets/5 METROS/6 LETRAS/5_50-10.JPG', 'LETRAS', 0],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-6.JPG', 'NUMEROS', 0],
          [
            'lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14.JPG',
            'E DIRECCIONAL',
            0
          ],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-6-rg.jpg', 'ROJO VERDE', 0],
          ['lib/assets/DIAL/0.JPG', 'DIAL', 0],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS', 0],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/5M001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/Menu Principal/VIDEOS FIJACION.png',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '3,1,0,0,0':
        ruta = '5 METROS | optotipo snellen';
        images = [
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/1.JPG', '1', 0],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/2.JPG', '2', 0],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/3.JPG', '3', 0],
          [
            'lib/assets/5 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG',
            'CROSSCYL',
            0
          ],
          ['lib/assets/5 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', 'DIAL', 0],
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
        ruta = '5 METROS | letras log';
        images = [
          ['lib/assets/5 METROS/1 LETRAS LOG/1.PNG', '1', 0],
          ['lib/assets/5 METROS/1 LETRAS LOG/2.PNG', '2', 0],
          ['lib/assets/5 METROS/1 LETRAS LOG/3.PNG', '3', 0],
          ['lib/assets/5 METROS/1 LETRAS LOG/CROSSCYL.JPG', 'crosscyl', 0],
          ['lib/assets/5 METROS/1 LETRAS LOG/DIAL.JPG', 'dial', 0]
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
        ruta = '5 METROS | numeros log';
        images = [
          ['lib/assets/5 METROS/2 NUMEROS LOG/1.PNG', '1', 0],
          ['lib/assets/5 METROS/2 NUMEROS LOG/2.PNG', '2', 0],
          ['lib/assets/5 METROS/2 NUMEROS LOG/3.PNG', '3', 0],
          ['lib/assets/5 METROS/2 NUMEROS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/5 METROS/2 NUMEROS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '5 METROS | e dir log';
        images = [
          ['lib/assets/5 METROS/3 E DIR LOG/1.PNG', '1', 0],
          ['lib/assets/5 METROS/3 E DIR LOG/2.PNG', '2', 0],
          ['lib/assets/5 METROS/3 E DIR LOG/3.PNG', '3', 0],
          ['lib/assets/5 METROS/3 E DIR LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/5 METROS/3 E DIR LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '5 METROS | c landolt log';
        images = [
          ['lib/assets/5 METROS/4 C LANDOLT LOG/1.PNG', '1', 0],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/2.PNG', '2', 0],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/3.PNG', '3', 0],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/5 METROS/4 C LANDOLT LOG/DIAL.JPG', 'DIAL', 0],
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
        ruta = '5 METROS | niños';
        images = [
          [
            'lib/assets/Menu Principal/videos de fijacion niños.jpg',
            'VIDEOS',
            0
          ],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/058.JPG', 'NEWYORK LIGHT HOUSE', 0],
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', 'OPTOTIPOS', 0],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
        ];
        break;
      case '3,6,1,0,0':
        ruta = '5 METROS | niños | videos';
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola', 0],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos', 0],
          ['lib/assets/PINOCHO.jpg', 'Pinocho', 0]
        ];

        break;
      case '3,6,1,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '3,6,1,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,16,0':
        triggerVideo = true;
        break;
      case '3,6,1,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '3,6,1,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;

      case '3,6,2,0,0':
        ruta = '5 METROS | niños | nlh';
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/NLH/058.JPG', '20/400', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/060.JPG', '20/200', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/061.JPG', '20/160', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/062.JPG', '20/125', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/063.JPG', '20/100', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/064.JPG', '20/80', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/065.JPG', '20/63', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/066.JPG', '20/50', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/067.JPG', '20/40', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/068.JPG', '20/32', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/069.JPG', '20/25', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/070.JPG', '20/20', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/071.JPG', '20/16', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/072.JPG', 'CROSSCYL', 0],
          ['lib/assets/5 METROS/5 NIÑOS/NLH/073.JPG', 'DIAL', 0],
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
        ruta = '5 METROS | niños | OPTOTIPO';
        images = [
          ['lib/assets/5 METROS/5 NIÑOS/1.PNG', 'SNELL 1', 70],
          ['lib/assets/5 METROS/5 NIÑOS/2.PNG', 'SNELL 2', 70],
          ['lib/assets/5 METROS/5 NIÑOS/3.PNG', 'SNELL 3', 70],
          ['lib/assets/5 METROS/5 NIÑOS/4.PNG', 'NLH 1', 70],
          ['lib/assets/5 METROS/5 NIÑOS/5.PNG', 'NLH 2', 70],
          ['lib/assets/5 METROS/5 NIÑOS/6.PNG', 'NLH 3', 70],
          ['lib/assets/5 METROS/5 NIÑOS/CROSSCYL.JPG', '', 0],
          ['lib/assets/5 METROS/5 NIÑOS/DIAL.JPG', '', 0]
        ];

        break;

      case '3,6,3,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '3,6,3,20,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '3,6,4,0,0':
        ruta = '5 METROS | niños | test de color';
        images = [
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            '',
            0
          ],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg',
            '',
            0
          ],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg',
            '',
            0
          ],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg',
            '',
            0
          ],
          [
            'lib/assets/5 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg',
            '',
            0
          ],
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
        ruta = '5 METROS | letras ';
        images = [
          ['lib/assets/5 METROS/6 LETRAS/5_50-10.JPG', '20/200 - 100', 2],
          ['lib/assets/5 METROS/6 LETRAS/5_50-11.JPG', '20/80 - 60', 3],
          ['lib/assets/5 METROS/6 LETRAS/5_50-12.JPG', '20/50 - 30', 3],
          ['lib/assets/5 METROS/6 LETRAS/5_50-13.JPG', '20/25 - 15', 3],
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
        ruta = '5 METROS | numeros';
        images = [
          ['lib/assets/5 METROS/7 NUMEROS/5_50-6.JPG', '20/400', -1],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-7.JPG', '20/200 - 100', 2],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-8.JPG', '20/50 - 30', 3],
          ['lib/assets/5 METROS/7 NUMEROS/5_50-9.JPG', '20/25 - 15', 3],
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
        ruta = '5 METROS | e direccional';
        images = [
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-14.JPG', '20/200 - 100', 2],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-15.JPG', '20/80 - 60', 3],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-16.JPG', '20/50 - 30', 3],
          ['lib/assets/5 METROS/8 E DIRECCIONAL/5_50-17.JPG', '20/25 - 15', 3],
        ];
     
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
        ruta = '5 METROS | rojo - verde';
        images = [
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-6-rg.jpg', 'NUMEROS | 20/400', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-7-rg.jpg', 'NUMEROS | 20/200 - 100', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-8-rg.jpg', 'NUMEROS | 20/50 - 30', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-9-rg.jpg', 'NUMEROS | 20/25 - 15', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-10-rg.jpg', 'LETRAS | 20/200 - 100', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-11-rg.jpg', 'LETRAS | 20/80 - 60', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-12-rg.jpg', 'LETRAS | 20/50 - 30', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-13-rg.jpg', 'LETRAS | 20/25 - 15', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-14-rg.jpg', 'E DIRECCIONAL | 20/200 - 100', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-15-rg.jpg', 'E DIRECCIONAL | 20/80 - 60', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-16-rg.jpg', 'E DIRECCIONAL | 20/50 - 30', 0],
          ['lib/assets/5 METROS/11 ROJO-VERDE/5_50-17-rg.jpg', 'E DIRECCIONAL | 20/25 - 15', 0],
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
        ruta = '5 METROS | dial';
        images = [
          ['lib/assets/DIAL/0.JPG', '0', 0],
          ['lib/assets/DIAL/10.JPG', '10', 0],
          ['lib/assets/DIAL/20.JPG', '20', 0],
          ['lib/assets/DIAL/30.JPG', '30', 0],
          ['lib/assets/DIAL/40.JPG', '40', 0],
          ['lib/assets/DIAL/50.JPG', '50', 0],
          ['lib/assets/DIAL/60.JPG', '60', 0],
          ['lib/assets/DIAL/70.JPG', '70', 0],
          ['lib/assets/DIAL/80.JPG', '80', 0],
          ['lib/assets/DIAL/90.JPG', '90', 0],
          ['lib/assets/DIAL/100.JPG', '100', 0],
          ['lib/assets/DIAL/110.JPG', '110', 0],
          ['lib/assets/DIAL/120.JPG', '120', 0],
          ['lib/assets/DIAL/130.JPG', '130', 0],
          ['lib/assets/DIAL/140.JPG', '140', 0],
          ['lib/assets/DIAL/150.JPG', '150', 0],
          ['lib/assets/DIAL/160.JPG', '160', 0],
          ['lib/assets/DIAL/170.JPG', '170', 0],
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

      case '3,12,0,0,0':
        ruta = '5 METROS | herramientas';
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS 1', 70],
          
          ['lib/assets/HERRAMIENTAS/3.JPG', 'HERRAMIENTAS 2', 70],
          
          ['lib/assets/HERRAMIENTAS/5.JPG', 'HERRAMIENTAS 3', 70],
          
          ['lib/assets/HERRAMIENTAS/7.JPG', 'HERRAMIENTAS 4', 0],
          ['lib/assets/HERRAMIENTAS/8.JPG', 'HERRAMIENTAS 5', 0],
          
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
        ruta = '5 METROS | pruebas y ayudas diagnosticas';
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/5M001.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/5M002.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', '', 0],
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
        ruta = '5 METROS | puntos de fijacion';
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS', 0],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS', 0]
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
        ruta = '6 METROS';
        images = [
          [
            'lib/assets/6 METROS/0 OPTOTIPO SNELLEN/1.JPG',
            'OPTOTIPO SNELLEN',
            0
          ],
          ['lib/assets/6 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG', 0],
          ['lib/assets/6 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG', 0],
          ['lib/assets/6 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG', 0],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG', 0],
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', 'NIÑOS', 0],
          ['lib/assets/6 METROS/6 LETRAS/6_50-10.JPG', 'LETRAS', 0],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-6.JPG', 'NUMEROS', 0],
          [
            'lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14.JPG',
            'E DIRECCIONAL',
            0
          ],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-6-rg.jpg', 'ROJO VERDE', 0],
          ['lib/assets/DIAL/0.JPG', 'DIAL', 0],
          ['lib/assets/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS', 0],
          [
            'lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/6M001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/Menu Principal/VIDEOS FIJACION.png',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '4,1,0,0,0':
        ruta = '6 METROS | optotipo snellen';
        images = [
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/1.JPG', '1', 0],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/2.JPG', '2', 0],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/3.JPG', '3', 0],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', 'DIAL', 0],
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
        ruta = '6 METROS | letras log';
        images = [
          ['lib/assets/6 METROS/1 LETRAS LOG/1.PNG', '1', 70],
          ['lib/assets/6 METROS/1 LETRAS LOG/2.PNG', '2', 70],
          ['lib/assets/6 METROS/1 LETRAS LOG/3.PNG', '3', 70],
          ['lib/assets/6 METROS/1 LETRAS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/1 LETRAS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '6 METROS | numeros log';
        images = [
          ['lib/assets/6 METROS/2 NUMEROS LOG/1.PNG', '1', 70],
          ['lib/assets/6 METROS/2 NUMEROS LOG/2.PNG', '2', 70],
          ['lib/assets/6 METROS/2 NUMEROS LOG/3.PNG', '3', 70],
          ['lib/assets/6 METROS/2 NUMEROS LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/2 NUMEROS LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '6 METROS | e dir log';
        images = [
          ['lib/assets/6 METROS/3 E DIR LOG/1.PNG', '1', 70],
          ['lib/assets/6 METROS/3 E DIR LOG/2.PNG', '2', 70],
          ['lib/assets/6 METROS/3 E DIR LOG/3.PNG', '3', 70],
         
          ['lib/assets/6 METROS/3 E DIR LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/3 E DIR LOG/DIAL.JPG', 'DIAL', 0]
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
        ruta = '6 METROS | c landolt log';
        images = [
          ['lib/assets/6 METROS/4 C LANDOLT LOG/1.PNG', '1', 70],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/2.PNG', '2', 70],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/3.PNG', '3', 70],
          
          ['lib/assets/6 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/4 C LANDOLT LOG/DIAL.JPG', 'DIAL', 0],
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
        ruta = '6 METROS | niños';
        images = [
          [
            'lib/assets/Menu Principal/videos de fijacion niños.jpg',
            'VIDEOS',
            0
          ],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/059.JPG', 'NEWYORK LIGHT HOUSE', 0],
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', 'OPTOTIPOS', 0],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          
          
        ];
        break;
        

      case '4,6,1,0,0':
        ruta = '6 METROS | videos';
        images = [
          ['lib/assets/LAVACALOLA.jpg', 'La vaca lola', 0],
          ['lib/assets/LosPollitosDicen.jpg', 'Los pollitos', 0],
          ['lib/assets/PINOCHO.jpg', 'Pinocho', 0]
        ];

        break;
      case '4,6,1,1,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '4,6,1,2,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,3,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,4,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,5,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,6,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,7,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,8,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,9,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,10,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,11,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,12,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,13,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,14,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,15,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,16,0':
        triggerVideo = true;
        break;
      case '4,6,1,17,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,18,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,19,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,1,20,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '4,6,2,0,0':
        ruta = '6 METROS | niños | nlh';
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/NLH/059.JPG', '20/400', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/060.JPG', '20/200', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/061.JPG', '20/200', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/062.JPG', '20/160', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/063.JPG', '20/125', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/064.JPG', '20/100', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/065.JPG', '20/80', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/066.JPG', '20/63', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/067.JPG', '20/50', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/068.JPG', '20/40', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/069.JPG', '20/32', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/070.JPG', '20/25', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/071.JPG', '20/20', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/072.JPG', '20/16', 0],
          ['lib/assets/6 METROS/5 NIÑOS/NLH/073.JPG', 'DIAL', 0],
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
        ruta = '6 METROS | niños | OPTOTIPOS';
        images = [
          ['lib/assets/6 METROS/5 NIÑOS/1.PNG', 'SNELL 1', 70],
          ['lib/assets/6 METROS/5 NIÑOS/2.PNG', 'SNELL 2', 70],
          ['lib/assets/6 METROS/5 NIÑOS/3.PNG', 'SNELL 3', 70],
          ['lib/assets/6 METROS/5 NIÑOS/4.PNG', 'NLH 1 ', 70],
          ['lib/assets/6 METROS/5 NIÑOS/5.PNG', 'NLH 2', 70],
          ['lib/assets/6 METROS/5 NIÑOS/6.PNG', 'NLH 3', 70],

          ['lib/assets/6 METROS/5 NIÑOS/CROSSCYL.JPG', 'CROSSCYL', 0],
          ['lib/assets/6 METROS/5 NIÑOS/DIAL.JPG', 'DIAL', 0]
        ];

        break;

      case '4,6,3,1,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,2,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,3,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,4,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,5,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,6,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,7,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,8,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,9,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,10,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,11,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,12,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,13,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,14,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,15,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,16,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,17,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,18,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,19,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '4,6,3,20,0':
        triggerImage = true;
        isPlaying = false;

        break;


      case '4,6,4,0,0':
        ruta = '6 METROS | niños | test de color';
        images = [
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            '',
            0
          ],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg',
            '',
            0
          ],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg',
            '',
            0
          ],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg',
            '',
            0
          ],
          [
            'lib/assets/6 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg',
            '',
            0
          ],
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
        ruta = '6 METROS | letras';
        images = [
          ['lib/assets/6 METROS/6 LETRAS/6_50-10.JPG', '20/200 - 100', 2],
          ['lib/assets/6 METROS/6 LETRAS/6_50-11.JPG', '20/80 - 60', 3],
          ['lib/assets/6 METROS/6 LETRAS/6_50-12.JPG', '20/50 - 30', 3],
          ['lib/assets/6 METROS/6 LETRAS/6_50-13.JPG', '20/25 - 15', 3],
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
        ruta = '6 METROS | numeros';
        images = [
          ['lib/assets/6 METROS/7 NUMEROS/6_50-6.JPG', '20/400', -1],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-7.JPG', '20/200 - 100', 2],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-8.JPG', '20/50 - 30', 3],
          ['lib/assets/6 METROS/7 NUMEROS/6_50-9.JPG', '20/25 - 15', 3],
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
        ruta = '6 METROS | e direccional';
        images = [
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-14.JPG', '20/200 - 100', 2],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-15.JPG', '20/80 - 60', 3],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-16.JPG', '20/50 - 30', 3],
          ['lib/assets/6 METROS/8 E DIRECCIONAL/6_50-17.JPG', '20/25 - 15', 3],
        ];
        // images = [
        //   [
        //     'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
        //     'VIDEOS EXPLICATIVOS'
        //   ],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13',0],
        //   ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14',0],
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
        ruta = '6 METROS | rojo - verde';
        images = [
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-6-rg.jpg', 'NUMEROS | 20/400', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-7-rg.jpg', 'NUMEROS | 20/200 - 100', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-8-rg.jpg', 'NUMEROS | 20/50 - 30', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-9-rg.jpg', 'NUMEROS | 20/25 - 15', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-10-rg.jpg', 'LETRAS | 20/200 - 100', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-11-rg.jpg', 'LETRAS | 20/80 - 60', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-12-rg.jpg', 'LETRAS | 20/50 - 30', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-13-rg.jpg', 'LETRAS | 20/25 - 15', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-14-rg.jpg', 'E DIRECCIONAL | 20/200 - 100', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-15-rg.jpg', 'E DIRECCIONAL | 20/80 - 60', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-16-rg.jpg', 'E DIRECCIONAL | 20/50 - 30', 0],
          ['lib/assets/6 METROS/11 ROJO-VERDE/6_50-17-rg.jpg', 'E DIRECCIONAL | 20/25 - 15', 0],
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
        ruta = '6 METROS | dial';
        images = [
          ['lib/assets/DIAL/0.JPG', '0', 0],
          ['lib/assets/DIAL/10.JPG', '10', 0],
          ['lib/assets/DIAL/20.JPG', '20', 0],
          ['lib/assets/DIAL/30.JPG', '30', 0],
          ['lib/assets/DIAL/40.JPG', '40', 0],
          ['lib/assets/DIAL/50.JPG', '50', 0],
          ['lib/assets/DIAL/60.JPG', '60', 0],
          ['lib/assets/DIAL/70.JPG', '70', 0],
          ['lib/assets/DIAL/80.JPG', '80', 0],
          ['lib/assets/DIAL/90.JPG', '90', 0],
          ['lib/assets/DIAL/100.JPG', '100', 0],
          ['lib/assets/DIAL/110.JPG', '110', 0],
          ['lib/assets/DIAL/120.JPG', '120', 0],
          ['lib/assets/DIAL/130.JPG', '130', 0],
          ['lib/assets/DIAL/140.JPG', '140', 0],
          ['lib/assets/DIAL/150.JPG', '150', 0],
          ['lib/assets/DIAL/160.JPG', '160', 0],
          ['lib/assets/DIAL/170.JPG', '170', 0],
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

      case '4,12,0,0,0':
        ruta = '6 METROS | herramientas';
        images = [
          ['lib/assets/HERRAMIENTAS/1.JPG', '', 70],
          
          ['lib/assets/HERRAMIENTAS/3.JPG', '', 70],
          
          ['lib/assets/HERRAMIENTAS/5.JPG', '', 70],
          
          ['lib/assets/HERRAMIENTAS/7.JPG', '',0],
          ['lib/assets/HERRAMIENTAS/8.JPG', '', 0],
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
        ruta = '6 METROS | pruebas y ayudas diagnosticas';
        images = [
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/6M001.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/6M002.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', '', 0],
          ['lib/assets/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', '', 0],
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
        ruta = '6 METROS | puntos de fijación';
        images = [
          ['lib/assets/PuntoDeFijacionLineas.PNG', 'FIJACION LINEAS', 0],
          ['lib/assets/PuntoDeFijacionCaras.PNG', 'FIJACION CARAS', 0]
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
        ruta = 'ATLAS E IMAGENES DE REFERENCIA';
        images = [
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/0 OJO.jpg', 'OJO', 0],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/1 ANATOMIA DEL OJO.jpg',
            'ANATOMIA DEL OJO',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/2 OJO ANATOMICO.jpg',
            'OJO ANATOMICO',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/3  MUSCULOS OCULARES 2.jpg',
            'MUSCULOS OCULARES',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/4  MUSCULOS OCULARES.jpg',
            'MUSCULOS OCULARES',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/19 ESTRABISMOS.jpg',
            'ESTRABISMOS',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/20 FONDO DE OJO SANO.jpg',
            'FONDO DE OJO SANO',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/21 FONDO DE OJO SANO 2.jpg',
            'FONDO DE OJO SANO',
            0
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/BLEFARITIS.jpg', 'BLEFARITIS', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/CATARATA.JPG', 'CATARATA', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/CHALAZION.jpg', 'CHALAZION', 0],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUNTIVITIS ALERGICA.jpg',
            'CONJUNTIVITIS ALERGICA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUNTIVITIS BACTERIANA.jpg',
            'CONJUNTIVITIS BACTERIANA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CONJUTIVITIS PAPILAR.jpeg',
            'CONJUNTIVITIS PAPILAR',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CUERPO EXTRAÑO EN CONJUNTIVA TARSAL.jpeg',
            'CUERPO EXTRAÑO EN CONJUNTIVA TARSAL',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/CUERPO EXTRAÑO EN CORNEA.jpeg',
            'CUERPO EXTRAÑO EN CORNEA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/DACRIOSISTITIS.jpeg',
            'DACRIOSISTITIS',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/depositos corneales 2.jpg',
            'DEPOSITOS CORNEALES',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/dermatochalasis 2.jpeg',
            'DERMATOCHALASIS',
            0
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/EPICANTO.JPG', 'EPICANTO', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/GLAUCOMA.JPG', 'GLAUCOMA', 0],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/HEMORRAGIA SUBCONJUNTIVAL.jpg',
            'SUBCONJUNTIVAL',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/HERPES OCULAR.jpeg',
            'HERPES OCULAR',
            0
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/NEVUS.JPG', 'NEVUS', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/orzuelo 1.jpeg', 'ORZUELO', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/orzuelo 2.jpeg', 'ORZUELO', 0],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/pinguecula 1.jpeg',
            'PINGUECULA',
            0
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/PTERIGION 1.jpg', 'PTERIGION', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/pterigion 2.jpg', 'PTERIGION', 0],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/ptosis 1.jpeg', 'PTOSIS', 0],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/queratitis 1.jpeg',
            'QUERATITIS',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/queratitis herpetica.jpg',
            'QUERATITIS HERPETICA'
          ],
          ['lib/assets/ATLAS E IMAGENES DE REFERENCIA/QUERATOCONO.jpg', 'QUERATOCONO', 0],
          // [
          //   'lib/assets/ATLAS E IMAGENES DE REFERENCIA/QUERATOGLOBO.jpeg',
          //   '',
          //   0
          // ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/RETINOPATIA DIABETICA 1.jpg',
            'RETINOMATIA DIABETICA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/RETINOPATIA DIABETICA.jpg',
            'RETINOMATIA DIABETICA',
            0
          ],
          
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia-diabetica (2).jpg',
            'RETINOMATIA DIABETICA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia-diabetica.jpg',
            'RETINOPATIA DIABETICA',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/retinopatia hipertensiva.jpeg',
            'RETINOMATIA HIPERTENSIVA',
            0
          ],
          
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/toxoplasmosis 2.jpg',
            'TOXOPLASMOSIS',
            0
          ],
          [
            'lib/assets/ATLAS E IMAGENES DE REFERENCIA/ULCERA CORNEAL 1.jpg',
            'ULCERA CORNEAL',
            0
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
      case '5,21,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,22,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,23,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,24,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,25,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,26,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,27,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,28,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,29,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,30,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,31,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,32,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,33,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,34,0,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      case '5,35,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,36,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,37,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,38,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,39,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,40,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,41,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,42,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,43,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '5,44,0,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      //'6,0
      case '6,0,0,0,0':
        ruta = 'DEFECTOS REFRACTIVOS';
        images = [
          ['lib/assets/Menu Principal/VIDEOS.png', 'VIDEOS EXPLICATIVOS', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', 'DEFECTOS REFRACTIVOS', 0],
        ];
        break;
      case '6,1,0,0,0':
        ruta = 'DEFECTOS REFRACTIVOS | VIDEOS EXPLICATIVOS';
        images = [
          ['lib/assets/0ELOJOHUMANOBIENEXPLICADO.jpg', 'EL OJO HUMANO', 0],
          [
            'lib/assets/0MiopiaHipermetropiaoAstigmatismo.jpg',
            'HIPERMETROPIA O ASTIGMATISMO',
            0
          ],
          [
            'lib/assets/0PresbiciaoVistaCansadaSintomasySoluciones.jpg',
            'PREBICIA O VISTA CANSADA SISTOMAS Y SOLUCIONES',
            0
          ],
        ];

        break;
      case '6,1,1,0,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '6,1,2,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,3,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,4,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,5,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,6,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,7,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,8,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,9,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,10,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,11,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,12,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,13,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,14,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,15,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,16,0,0':
        triggerVideo = true;
        break;
      case '6,1,17,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,18,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,19,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,1,20,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '6,2,0,0,0':
        //Defectos
        ruta = 'DEFECTOS REFRACTIVOS';
        images = [
          ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', 'EMETROPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', 'EMETROPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', 'MIOPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', 'MIOPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', 'HIPERMETROPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', 'HIPERMETROPIA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', 'ASTIGMATISMO', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', 'ASTIGMATISMO', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', 'CATARATA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', 'CATARATA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', 'GLAUCOMA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', 'GLAUCOMA', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', 'DEGENERACIÓN MACULAR', 0],
          ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', 'DEGENERACIÓN MACULAR', 0],
        ];
        break;
      case '6,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '6,2,20,0,0':
        triggerImage = true;
        isPlaying = false;

        break;

      case '7,0,0,0,0':
        ruta = 'REJILLAS DE AMSLER';
        images = [
          ['lib/assets/MACULOPATIA/1.JPG', '', 70],
          ['lib/assets/MACULOPATIA/3.JPG', '', 70],
          ['lib/assets/MACULOPATIA/5.JPG', '', 70],
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
        ruta = 'TEST DE STEREOPSIS';
        images = [
          ['lib/assets/TEST DE STEREOPSIS/1_R.PNG', '', 0],
          // ['lib/assets/TEST DE STEREOPSIS/1.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/2.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/3.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/4.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/5.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/6.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/6.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/7.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/7.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/8_R.PNG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/8.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/9.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/12.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/13.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/21.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/22.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/23.JPG', '', 0],
          ['lib/assets/TEST DE STEREOPSIS/24.JPG', '', 0],
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
      //9,0

      case '9,0,0,0,0':
        ruta = 'TEST DE COLOR';
        images = [
                ['lib/assets/TESTD/FONDO NEGRO/11.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/12.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/1.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/2.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/3.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/4.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/5.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/6.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/7.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/8.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/9.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/10.JPG', '', 0],
    
          ['lib/assets/TESTD/FONDO NEGRO/13.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/14.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/15.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/16.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/17.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/18.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/19.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/20.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/21.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/22.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/23.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/24.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/25.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/26.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/27.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/28.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/29.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/30.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/31.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/32.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/33.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/34.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/35.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/36.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/37.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/38.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/39.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/40.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/41.JPG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/42.PNG', '', 0],
          ['lib/assets/TESTD/FONDO NEGRO/43.JPG', '', 0],
        ];
        break;
      case '9,1,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,2,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,3,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,4,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,5,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,6,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,7,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,8,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,9,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,10,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,11,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,12,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,13,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,14,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,15,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,16,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,17,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,18,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,19,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,20,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,21,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,22,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,23,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,24,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,25,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,26,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,27,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,28,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,29,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,30,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,31,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,32,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,33,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,34,0,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
      case '9,35,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,36,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,37,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,38,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,39,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,40,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,41,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,42,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,43,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '9,44,0,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      //LENTES
      case '10,0,0,0,0':
        ruta = 'TIPOS DE LENTES';
        images = [
          ['lib/assets/Menu Principal/VIDEOS.png', 'VIDEOS EXPLICATIVOS', 0],
          [
            'lib/assets/Menu Principal/LENTES.png',
            'TIPOS DE LENTES',
            0
          ],
        ];
        break;

      case '10,1,0,0,0':
        ruta = 'Tipos de lentes | VIDEOS EXPLICATIVOS';
        images = [
          [
            'lib/assets/Comoponeryquitarloslentesdecontacto.jpg',
            'QUITAR LOS LENTES DE CONTACTO',
            0
          ],
          ['lib/assets/LentesProgresivos.png', 'LENTES PROGRESIVOS', 0],
          [
            'lib/assets/ComousarlentesprogresivosAcostumbratealoslentesprogresivos.jpg',
            'COMO USAR LENTES PROGRESIVOS',
            0
          ],
          [
            'lib/assets/ConoceTransitionslarevolucionenlentesquecambiandecolor.jpg',
            'CONOCE LOS LENTES TRANSITIONS',
            0
          ],
          ['lib/assets/NuevoslentesTransitionSignatureVIIFLV.png','Nuevos lentes Transition Signature VII',0],
['lib/assets/OPTIMALLentesFotocromaticos.jfif','OPTIMAL Lentes Fotocromaticos',0],
          ['lib/assets/LentesTransitions.jpg', 'LENTES TRANSITIONS', 0],
          [
            'lib/assets/LentesPhotoFusionZeiss.jpg',
            'LENTES PHOTOFUSION ZEISS',
            0
          ],
          [
            'lib/assets/ProteccionBlueLightCutenlentesparachicos.jpg',
            'PROTECCION BLUE LIGTH',
            0
          ],
          ['lib/assets/LENTES2.jpg','Que la luz azul no dañe sus ojos',0],
          ['lib/assets/Porquelaluzazulesperjudicialparalosojos.jpg','Por que la luz azul es perjudicial para los ojos',0],


        ];

        break;
      case '10,1,1,0,0':
        isPlaying = true;
        triggerVideo = true;

        break;
      case '10,1,2,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,3,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,4,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,5,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,6,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,7,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,8,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,9,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,10,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,11,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,12,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,13,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,14,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,15,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,16,0,0':
        triggerVideo = true;
        break;
      case '10,1,17,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,18,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,19,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,1,20,0,0':
        isPlaying = true;
        triggerVideo = true;
        break;
      case '10,2,0,0,0':
        images = [
    // ERGONOMIA
    ['lib/assets/TIPOS DE LENTES/ERGONOMIA.png','ERGONOMIA',0],
['lib/assets/TIPOS DE LENTES/ERGONOMIA1.jpg','ERGONOMIA',0],
['lib/assets/TIPOS DE LENTES/ERGONOMIA2.jpg','ERGONOMIA',0],
          // alto indice
          ['lib/assets/TIPOS DE LENTES/ALTO INDICE.jpg','ALTO INDICE',0],
['lib/assets/TIPOS DE LENTES/ALTO INDICE2.jpg','ALTO INDICE',0],
['lib/assets/TIPOS DE LENTES/ALTO INDICE3.jpg','ALTO INDICE',0],
['lib/assets/TIPOS DE LENTES/ALTO INDICE4.jpg','ALTO INDICE',0],
//Antireflejo
['lib/assets/TIPOS DE LENTES/ANTIRREFLEJO 2.jpg','ANTIREFLEJO',0],
['lib/assets/TIPOS DE LENTES/lentes_antireflejo 1.jpg', 'ANTIREFLEJO',0],
['lib/assets/TIPOS DE LENTES/lentes_antireflejo.jpg','ANTIREFLEJO',0],
//BIFOCAL
['lib/assets/TIPOS DE LENTES/BIFOCALES.png','BIFOCALES',0],
['lib/assets/TIPOS DE LENTES/BIFOCAL FLAT TOP.jpg','BIFOCALES',0],
//Espectro de luz
['lib/assets/TIPOS DE LENTES/ESPECTRO DE LUZ 1.jpg','ESPECTRO DE LUZ',0],
['lib/assets/TIPOS DE LENTES/ESPECTRO DE LUZ 2.jpg','ESPECTRO DE LUZ',0],
['lib/assets/TIPOS DE LENTES/ESPECTRO DE LUZ.png','ESPECTRO DE LUZ',0],
['lib/assets/TIPOS DE LENTES/ESPETRO DE LUZ AZUL.jpeg','ESPECTRO DE LUZ',0],
['lib/assets/TIPOS DE LENTES/ESPECTRO DE LUZ AZUL 2.jpg','ESPECTRO DE LUZ',0],
['lib/assets/TIPOS DE LENTES/ESPECTRO DE LUZ AZUL 3.jpg','ESPECTRO DE LUZ',0],
//GAFAS Y ROSTROS
['lib/assets/TIPOS DE LENTES/GAFAS Y ROSTROS 2.png','GAFAS Y ROSTROS',0],
['lib/assets/TIPOS DE LENTES/GAFAS Y ROSTROS.png','GAFAS Y ROSTROS',0],
//FOTOCROMATICOS

['lib/assets/TIPOS DE LENTES/COLORES DE LENTES.jpg','COLORES DE LENTES',0],
['lib/assets/TIPOS DE LENTES/FOTOCROMATICOS.jpg','FOTOCROMATICOS',0],
['lib/assets/TIPOS DE LENTES/FOTOCROMATICOS 2 .jpg','FOTOCROMATICOS',0],
['lib/assets/TIPOS DE LENTES/POLARIZADOS.jpg','POLARIZADOS',0],
['lib/assets/TIPOS DE LENTES/POLARIZADO 2.jpg','POLARIZADOS',0],
['lib/assets/TIPOS DE LENTES/Transitions.png','TRANSITIONS',0],
['lib/assets/TIPOS DE LENTES/TransitionsLensColors.jpg','TRANSITIONS',0],

//LENTES DE CONTACTO
['lib/assets/TIPOS DE LENTES/LENTES DE CONTACTO.jpg','LENTES DE CONTACTO',0],
['lib/assets/TIPOS DE LENTES/LENTES DE CONTACTO2.jpg','LENTES DE CONTACTO',0],
['lib/assets/TIPOS DE LENTES/LENTES DE CONTACTO3.gif','LENTES DE CONTACTO',0],
['lib/assets/TIPOS DE LENTES/LENTE DE CONTACTO BLANDO.jpeg','LENTES DE CONTACTO BLANDOS',0],
['lib/assets/TIPOS DE LENTES/LENTE DE CONTACTO GAS PERMEABLE.jpeg','LENTES DE CONTACTO GAS PERMEABLE',0],
//PROGRESIVOS
['lib/assets/TIPOS DE LENTES/zonas de vision con progresivos.JPG','ZONAS DE VISION CON PROFRESIVOS',0],
['lib/assets/TIPOS DE LENTES/Progresivos.png','PROGRESIVOS',0],
['lib/assets/TIPOS DE LENTES/PROGRESIVOS STANDARD.png','PROGRESIVOS STANDARD',0],
['lib/assets/TIPOS DE LENTES/PROGRESIVOS PREMIUM.png','PROGRESIVOS PREMIUM',0],

//ZONAS DE VISION
['lib/assets/TIPOS DE LENTES/VIEW_FAR.BMP','',0],
['lib/assets/TIPOS DE LENTES/VIEW_MID.BMP','',0],
['lib/assets/TIPOS DE LENTES/view_near.bmp','',0],
['lib/assets/TIPOS DE LENTES/view_trifocal.bmp','',0],
// MARCAS Y MATERIALES
['lib/assets/TIPOS DE LENTES/MARCAS.png','MARCAS',0],
['lib/assets/TIPOS DE LENTES/MATERIALES.jpg','MATERIALES',0]

        ];
        break;

      case '10,2,1,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,2,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,3,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,4,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,5,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,6,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,7,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,8,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,9,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,10,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,11,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,12,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,13,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,14,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,15,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,16,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,17,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,18,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,19,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,20,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
        
      case '10,2,21,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,22,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,23,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,24,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,25,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,26,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,27,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,28,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,29,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,30,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,31,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,32,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,33,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,34,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,35,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,36,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,37,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,38,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,39,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,40,0,0':
        triggerImage = true;
        isPlaying = false;
        break;
        case '10,2,41,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,42,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,43,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,44,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,45,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,46,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,47,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,48,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      case '10,2,49,0,0':
        triggerImage = true;
        isPlaying = false;

        break;
      default:
    }
  }
}
