import 'package:flutter/material.dart';

class ProvideImages with ChangeNotifier {
  bool triggerVideo = false;
  bool triggerImage = false;
  List pMenu = [0, 0, 0, 0];
  List images = [
    ['lib/assets/miniaturas/3 metros.jpg', '3 metros'],
    // ['lib/assets/4 metros.jpg', '4 metros'],
    // ['lib/assets/5 metros.jpg', '5 metros']
  ];

  get getImages {
    return images;
  }

  get getTriggerImage {
    return triggerImage;
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
        menu[3].toString();
    print('PROVIDER $m');

    switch (m) {
      case '0,0,0,0':
        images = [
          ['lib/assets/miniaturas/3 metros.jpg', '3 metros'],
          // ['lib/assets/4 metros.jpg', '4 metros'],
          // ['lib/assets/5 metros.jpg', '5 metros']
        ];
        break;
      case '1,0,0,0':
        // Menu 3 metros
        images = [
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', 'OPTOTIPO SNELLEN'],
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', 'LETRAS LOG'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', 'NUMEROS LOG'],
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', 'E DIR LOG'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', 'C LANDOLT LOG'],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', 'NIÑOS'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10-h1.jpg', 'LETRAS'],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', 'NUMEROS'],
          [
            'lib/assets/3 METROS/8 E DIRECCIONAL/3_50-14-h1.jpg',
            'E DIRECCIONAL'
          ],
          ['lib/assets/3 METROS/11 ROJO-VERDE/3_50-6-rg.jpg', 'ROJO VERDE'],
          ['lib/assets/3 METROS/DIAL/0.JPG', 'DIAL'],
          ['lib/assets/3 METROS/HERRAMIENTAS/1.JPG', 'HERRAMIENTAS'],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG',
            'PRUEBAS Y AYUDAS DIAGNOSTICAS'
          ],
          [
            'lib/assets/3 METROS/VIDEOS PUNTOS DE FIJACION/1',
            'VIDEOS PUNTOS DE FIJACION'
          ],
        ];
        break;
      case '1,1,0,0':
        images = [
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/1.JPG', '1'],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/2.JPG', '2'],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/CROSSCYL.JPG', 'COSSCYL'],
          ['lib/assets/3 METROS/0 OPTOTIPO SNELLEN/DIAL.JPG', 'DIAL'],
        ];
        triggerImage = true;
        break;
      case '1,2,0,0':
        images = [
          ['lib/assets/3 METROS/1 LETRAS LOG/1.PNG', '1'],
          ['lib/assets/3 METROS/1 LETRAS LOG/2.PNG', '2'],
          ['lib/assets/3 METROS/1 LETRAS LOG/3.PNG', '3'],
          ['lib/assets/3 METROS/1 LETRAS LOG/4.PNG', '4'],
          ['lib/assets/3 METROS/1 LETRAS LOG/5.PNG', '5'],
          ['lib/assets/3 METROS/1 LETRAS LOG/6.PNG', '6'],
          ['lib/assets/3 METROS/1 LETRAS LOG/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/1 LETRAS LOG/DIAL.JPG', 'DIAL']
        ];
        triggerImage = true;
        break;
      case '1,3,0,0':
        images = [
          ['lib/assets/3 METROS/2 NUMEROS LOG/1.PNG', '1'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/2.PNG', '2'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/3.PNG', '3'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/4.PNG', '4'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/5.PNG', '5'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/6.PNG', '6'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/2 NUMEROS LOG/DIAL.JPG', 'DIAL']
        ];
        triggerImage = true;
        break;
      case '1,4,0,0':
        images = [
          ['lib/assets/3 METROS/3 E DIR LOG/1.PNG', '1'],
          ['lib/assets/3 METROS/3 E DIR LOG/2.PNG', '2'],
          ['lib/assets/3 METROS/3 E DIR LOG/3.PNG', '3'],
          ['lib/assets/3 METROS/3 E DIR LOG/4.PNG', '4'],
          ['lib/assets/3 METROS/3 E DIR LOG/5.PNG', '5'],
          ['lib/assets/3 METROS/3 E DIR LOG/6.PNG', '6'],
          ['lib/assets/3 METROS/3 E DIR LOG/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/3 E DIR LOG/DIAL.JPG', 'DIAL']
        ];
        triggerImage = true;
        break;
      case '1,5,0,0':
        images = [
          ['lib/assets/3 METROS/4 C LANDOLT LOG/1.PNG', '1'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/2.PNG', '2'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/3.PNG', '3'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/4.PNG', '4'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/5.PNG', '5'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/6.PNG', '6'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/4 C LANDOLT LOG/DIAL.JPG', 'DIAL'],
        ];
        triggerImage = true;
        break;
      case '1,6,0,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/NLH/058.JPG', 'NHL'],
          [
            'lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg',
            'TEST COLOR'
          ],
          ['lib/assets/3 METROS/5 NIÑOS/VIDEOS PUNTOS DE FIJACION/1', 'VIDEOS'],
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', '1'],
          ['lib/assets/3 METROS/5 NIÑOS/2.PNG', '2'],
          ['lib/assets/3 METROS/5 NIÑOS/3.PNG', '3'],
          ['lib/assets/3 METROS/5 NIÑOS/4.PNG', '4'],
          ['lib/assets/3 METROS/5 NIÑOS/5.PNG', '5'],
          ['lib/assets/3 METROS/5 NIÑOS/6.PNG', '6'],
          ['lib/assets/3 METROS/5 NIÑOS/7.PNG', '7'],
          ['lib/assets/3 METROS/5 NIÑOS/8.PNG', '8'],
          ['lib/assets/3 METROS/5 NIÑOS/9.PNG', '9'],
          ['lib/assets/3 METROS/5 NIÑOS/10.PNG', '10'],
          ['lib/assets/3 METROS/5 NIÑOS/11.PNG', '11'],
          ['lib/assets/3 METROS/5 NIÑOS/12.PNG', '12'],
          ['lib/assets/3 METROS/5 NIÑOS/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/5 NIÑOS/DIAL.JPG', 'DIAL']
        ];
        break;
      case '1,6,1,0':
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
        triggerImage = true;
        break;
      case '1,6,2,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 01.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 03.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 05.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 07.jpg', ''],
          ['lib/assets/3 METROS/5 NIÑOS/TEST DE COLOR/TEST COLOR 08.jpg', ''],
        ];
        triggerImage = true;
        break;
      case '1,6,3,0':
        images = [
          ['lib/assets/LAVACALOLA.mp4', 'La vaca lola'],
          ['lib/assets/LosPollitosDicen.mp4', 'Los pollitos'],
          ['lib/assets/PINOCHO.mp4', 'Pinocho']
        ];
        triggerVideo = true;
        break;
      case '1,6,4,0':
        images = [
          ['lib/assets/3 METROS/5 NIÑOS/1.PNG', '1'],
          ['lib/assets/3 METROS/5 NIÑOS/2.PNG', '2'],
          ['lib/assets/3 METROS/5 NIÑOS/3.PNG', '3'],
          ['lib/assets/3 METROS/5 NIÑOS/4.PNG', '4'],
          ['lib/assets/3 METROS/5 NIÑOS/5.PNG', '5'],
          ['lib/assets/3 METROS/5 NIÑOS/6.PNG', '6'],
          ['lib/assets/3 METROS/5 NIÑOS/7.PNG', '7'],
          ['lib/assets/3 METROS/5 NIÑOS/8.PNG', '8'],
          ['lib/assets/3 METROS/5 NIÑOS/9.PNG', '9'],
          ['lib/assets/3 METROS/5 NIÑOS/10.PNG', '10'],
          ['lib/assets/3 METROS/5 NIÑOS/11.PNG', '11'],
          ['lib/assets/3 METROS/5 NIÑOS/12.PNG', '12'],
          ['lib/assets/3 METROS/5 NIÑOS/CROSSCYL.JPG', 'CROSSCYL'],
          ['lib/assets/3 METROS/5 NIÑOS/DIAL.JPG', 'DIAL']
        ];
        triggerImage = true;
        break;
      case '1,7,0,0':
        images = [
          ['lib/assets/3 METROS/6 LETRAS/3_50-10-h1.jpg', '1'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10-h2.jpg', '2'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-10.JPG', '3'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h1.jpg', '4'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h2.jpg', '5'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11-h3.jpg', '6'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-11.JPG', '7'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h1.jpg', '8'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h2.jpg', '9'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12-h3.jpg', '10'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-12.JPG', '11'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h1.jpg', '12'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h2.jpg', '13'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13-h3.jpg', '14'],
          ['lib/assets/3 METROS/6 LETRAS/3_50-13.JPG', '15']
        ];
        triggerImage = true;
        break;
      case '1,8,0,0':
        images = [
          ['lib/assets/3 METROS/7 NUMEROS/3_50-6.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-7.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8-h3.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-8.JPG', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h1.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h2.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9-h3.jpg', ''],
          ['lib/assets/3 METROS/7 NUMEROS/3_50-9.JPG', ''],
        ];
        triggerImage = true;
        break;
      case '1,9,0,0':
        images = [
          [
            'lib/assets/DEFECTOS REFRACTIVOS/VIDEOS EXPLICATIVOS.JPG',
            'VIDEOS EXPLICATIVOS'
          ],
          ['lib/assets/DEFECTOS REFRACTIVOS/1.JPG', '1'],
          ['lib/assets/DEFECTOS REFRACTIVOS/2.JPG', '2'],
          ['lib/assets/DEFECTOS REFRACTIVOS/3.JPG', '3'],
          ['lib/assets/DEFECTOS REFRACTIVOS/4.JPG', '4'],
          ['lib/assets/DEFECTOS REFRACTIVOS/5.JPG', '5'],
          ['lib/assets/DEFECTOS REFRACTIVOS/6.JPG', '6'],
          ['lib/assets/DEFECTOS REFRACTIVOS/7.JPG', '7'],
          ['lib/assets/DEFECTOS REFRACTIVOS/8.JPG', '8'],
          ['lib/assets/DEFECTOS REFRACTIVOS/9.JPG', '9'],
          ['lib/assets/DEFECTOS REFRACTIVOS/10.JPG', '10'],
          ['lib/assets/DEFECTOS REFRACTIVOS/11.JPG', '11'],
          ['lib/assets/DEFECTOS REFRACTIVOS/12.JPG', '12'],
          ['lib/assets/DEFECTOS REFRACTIVOS/13.JPG', '13'],
          ['lib/assets/DEFECTOS REFRACTIVOS/14.JPG', '14'],
        ];
        triggerImage = true;
        break;
      case '1,10,0,0':
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
        triggerImage = true;
        break;
      case '1,11,0,0':
        images = [
          ['lib/assets/3 METROS/DIAL/0.JPG', ''],
          ['lib/assets/3 METROS/DIAL/10.JPG', ''],
          ['lib/assets/3 METROS/DIAL/20.JPG', ''],
          ['lib/assets/3 METROS/DIAL/30.JPG', ''],
          ['lib/assets/3 METROS/DIAL/40.JPG', ''],
          ['lib/assets/3 METROS/DIAL/50.JPG', ''],
          ['lib/assets/3 METROS/DIAL/60.JPG', ''],
          ['lib/assets/3 METROS/DIAL/70.JPG', ''],
          ['lib/assets/3 METROS/DIAL/80.JPG', ''],
          ['lib/assets/3 METROS/DIAL/90.JPG', ''],
          ['lib/assets/3 METROS/DIAL/100.JPG', ''],
          ['lib/assets/3 METROS/DIAL/110.JPG', ''],
          ['lib/assets/3 METROS/DIAL/120.JPG', ''],
          ['lib/assets/3 METROS/DIAL/130.JPG', ''],
          ['lib/assets/3 METROS/DIAL/140.JPG', ''],
          ['lib/assets/3 METROS/DIAL/150.JPG', ''],
          ['lib/assets/3 METROS/DIAL/160.JPG', ''],
          ['lib/assets/3 METROS/DIAL/170.JPG', ''],
        ];
        triggerImage = true;
        break;
      case '1,12,0,0':
        images = [
          ['lib/assets/3 METROS/HERRAMIENTAS/1.JPG', '1'],
          ['lib/assets/3 METROS/HERRAMIENTAS/2.JPG', '2'],
          ['lib/assets/3 METROS/HERRAMIENTAS/3.JPG', '3'],
          ['lib/assets/3 METROS/HERRAMIENTAS/4.JPG', '4'],
          ['lib/assets/3 METROS/HERRAMIENTAS/5.JPG', '5'],
          ['lib/assets/3 METROS/HERRAMIENTAS/6.JPG', '6'],
          ['lib/assets/3 METROS/HERRAMIENTAS/7.JPG', '7'],
          ['lib/assets/3 METROS/HERRAMIENTAS/8.JPG', '8'],
        ];
        triggerImage = true;
        break;
      case '1,13,0,0':
        images = [
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/001.JPG', '1'],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/002.JPG', '2'],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/88.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/d.b_8.png', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/MADDOS.JPG', ''],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6_image.png',
            ''
          ],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_1.png',
            ''
          ],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_B.png',
            ''
          ],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/ms_6.5_w.png',
            ''
          ],
          [
            'lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/ost_6.5w.png',
            ''
          ],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL1.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL2.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL3.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL4.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PL53986.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/PLRG69.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/R-G.PNG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG1.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/RG2.JPG', ''],
          ['lib/assets/3 METROS/PRUEBAS Y AYUDAS DIAGNOSTICAS/st_6.5.png', ''],
        ];
        triggerImage = true;
        break;
      case '1,14,0,0':
        images = ['', 'VIDEOS DE FIJACION'];
        break;
      case '2,0,0,0':
        images = ['4 metros'];
        break;
      default:
    }
  }
}
