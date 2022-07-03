import 'package:blindlook/screens/home_screen/home_screen.dart';
import 'package:blindlook/screens/request_screen/request_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen/eye_brands_screen/eye_brands_screen.dart';
import '../screens/log_reg_screen/sign_up_screen.dart';
import '../screens/news_screen/news_screen.dart';
import '../screens/settings_screen/settings_screen.dart';
import '../screens/simulation_screen/simulation_screen.dart';
import '../screens/story_screen/story_screen.dart';

class Controller extends GetxController {
  List<Widget> pages = [
    EyeBrands(),
    Story(),
    HomePage(),
    RequestScreen(),
    NewsScreen(),
    SignUpScreen(),
  ];
  List<Widget> pagesSingIn = [
    EyeBrands(),
    Story(),
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
}
