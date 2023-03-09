import 'package:flutter/cupertino.dart';
import 'package:gallery_ui/screens/home/view/gallery_screen.dart';
import 'package:gallery_ui/screens/profile/view/profile_screen.dart';

import '../../video/view/video_screen.dart';

class Homeprovider extends ChangeNotifier {
  int i = 0;
  List pic = [
    "assets/images/1.ishu.jpg",
    "assets/images/1.prina.jpg",
    "assets/images/1.snehal.jpg",
    "assets/images/2.ishu.jpg",
    "assets/images/2.prina.jpg",
    "assets/images/2.snehal.jpg",
    "assets/images/3.ishu.jpg",
    "assets/images/3.prina.jpg",
    "assets/images/3.snehal.jpg",
    "assets/images/4.ishu.jpg",
    "assets/images/4.prina.jpg",
    "assets/images/4.snehal.jpg",
    "assets/images/dhamu1.jpg",
    "assets/images/5.ishu.jpg",
    "assets/images/5.prina.jpg",
    "assets/images/5.snehal.jpg",
    "assets/images/12.png",
    "assets/images/dhamu3.jpg",
    "assets/images/bhabhi1.jpg",
    "assets/images/dhamu6.jpg",
    "assets/images/bhabhi2.jpg",
    "assets/images/dhamu7.jpg",
    "assets/images/bhabhi3.jpg",
    "assets/images/dhamu8.jpg",

  ];
  List name = [
    'VID_20230132_093931',
    'VID_20230132_093932',
    'VID_20230132_093933',
    'VID_20230132_093934',
    'VID_20230132_093935',
    'VID_20230132_093936',
    'VID_20230132_093937',
    'VID_20230132_093938',
    'VID_20230132_093939',
    'VID_20230132_093940',
    'VID_20230132_093941',
    'VID_20230132_093942',
    'VID_20230132_093943',
    'VID_20230132_093944',
    'VID_20230132_093945',
    'VID_20230132_093946',
    'VID_20230132_093947',
    'VID_20230132_093948',
    'VID_20230132_093949',
    'VID_20230132_093950',
    'VID_20230132_093951',
    'VID_20230132_093952',
    'VID_20230132_093953',
    'VID_20230132_093954',

  ];
  List Date = [
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
    "28/06/2021",
  ];
  List Screens = [
    gallery(),
    video(),
    Profile(),
  ];

  void selectindex(int value)
  {
    i=value;
    notifyListeners();
  }
}
