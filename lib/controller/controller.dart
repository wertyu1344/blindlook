import 'package:blindlook/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  LoginClass controller = Get.put(LoginClass());
  var loyalityPageIndex = 0.obs;
  var priceName = "".obs;
  var pageIndex = 0.obs;
  double butonlarArasiBosluk = 10;
  var homepageCenter1 = "Home".obs;
  var homepageCenter2 = "BlindLook".obs;
  var homepageCenter3 = "Request".obs;
  var homePageCenter4 = "News".obs;
  var homePageCenter5 = "SignUp".obs;
  var isNotification = true.obs;
  var notificationText = "".obs;
  var notificationDetail = "".obs;
  var isClickedNotification = false.obs;

  //Blog
  var blogPostTitle = "".obs;
  var blogIndex = 0.obs;
}

class LoginClass extends GetxController {
  var isHomePageActive = "Home".obs;
  var selectedItemColor = Colors.white.obs;
  bool isLogin = true;
  var eyeBrandsVisible = true.obs;
  var eyeBrandsFilterIndex = 0.obs;

  var signupPageIndex = 0.obs;
  var resquestType = "";
  var phoneCode = "+93".obs;
  var requestPageIndex = 0.obs;
  var simulationPageIndex = 0.obs;
  var eyeMenuPageIndex = 0.obs;
  late StoreModel selectedStore;
}
