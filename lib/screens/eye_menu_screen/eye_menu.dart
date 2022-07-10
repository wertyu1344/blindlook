import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/eye_menu_screen/eye_menu_2.dart';
import 'package:blindlook/screens/eye_menu_screen/eye_menu_about_us.dart';
import 'package:blindlook/screens/eye_menu_screen/eye_menu_erisebilirlik_haritasi.dart';
import 'package:blindlook/screens/eye_menu_screen/eye_menu_google_maps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'eye_menu_1.dart';

import 'eye_menu_products.dart';
import 'eye_menu_screen.dart';

class EyeMenu extends StatelessWidget {
  EyeMenu({Key? key}) : super(key: key);
  LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: body(),
      ),
    );
  }

  body() {
    switch (controller.eyeMenuPageIndex.value) {
      case 0:
        return EyeMenuPage();
      case 1:
        return EyeMenu1();
      case 2:
        return EyeMenu2();
      case 3:
        return ErisebilirlikHaritasi();
      case 4:
        return EyeMenuAboutUs();
      case 5:
        return EyeMenuProducts();
      case 6:
        return EyeMenuGooglePlay();
    }
  }
}
