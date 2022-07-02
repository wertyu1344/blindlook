import 'package:blindlook/screens/home_screen/home_screen.dart';
import 'package:blindlook/screens/request_screen/request_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/log_reg_screen/sign_up_screen.dart';
import '../screens/news_screen/news_screen.dart';
import '../screens/settings_screen/settings_screen.dart';
import '../screens/simulation_screen/simulation_screen.dart';

class Controller extends GetxController {
  List<Widget> pages = [
    HomePage(),
    RequestScreen(),
    NewsScreen(),
    SignUpScreen(),
  ];
  List<Widget> pagesSingIn = [
    HomePage(),
    RequestScreen(),
    SimulationScreen(),
    SettingsScreen(),
  ];
  var pageIndex = 0.obs;

  double butonlarArasiBosluk = 10;
  bool isLogin = true;
}

class LoginClass extends GetxController {
  bool isLogin = true;
  TextStyle requestTextStyleTitle = TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 26,
      fontWeight: FontWeight.w500);
  TextStyle requestTextStyleMedium = TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 17,
      fontWeight: FontWeight.w500);
  TextStyle homePageContentTextStyle = TextStyle(color: Colors.white);
}
