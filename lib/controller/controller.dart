import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  LoginClass controller = Get.put(LoginClass());

  var pageIndex = 0.obs;

  double butonlarArasiBosluk = 10;

  var homepageCenter1 = "Home".obs;
  var homepageCenter2 = "BlindLook".obs;
  var homepageCenter3 = "Request".obs;
  var homePageCenter4 = "News".obs;
  var homePageCenter5 = "SignUp".obs;
}

class LoginClass extends GetxController {
  var isHomePageActive = "Home".obs;
  var selectedItemColor = Colors.white.obs;
  bool isLogin = false;
  var eyeBrandsVisible = true.obs;
  var eyeBrandsFilterIndex = 0.obs;
}
