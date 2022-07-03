import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  LoginClass controller = Get.put(LoginClass());

  var pageIndex = 0.obs;

  double butonlarArasiBosluk = 10;

  // 0 => enything selected
}

class LoginClass extends GetxController {
  var isHomePageActive = "Home".obs;
  var selectedItemColor = Colors.white.obs;
  bool isLogin = true;
  var eyeBrandsFilterIndex = 0.obs;
}
