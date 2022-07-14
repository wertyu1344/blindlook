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
  var products = ["Washing Machine", "Fridge", "TVs"];
  var selectedProduct = "";
  var selectedVersion = "";
  var versions = [
    "537XYZ",
    "537XYZ",
    "537XYZ",
    "537XYZ",
    "537XYZ",
    "537XYZ",
  ];
  var isHomePageActive = "Home".obs;
  var selectCountryIndex = 0.obs;
  var selectedItemColor = Colors.white.obs;
  bool isLogin = false;
  var eyeBrandsVisible = true.obs;
  var eyeBrandsFilterIndex = 0.obs;
  var isFirtsTime = false.obs;
  var signupPageIndex = 0.obs;
  var resquestType = "";
  var phoneCode = "+93".obs;
  var requestPageIndex = 0.obs;
  var simulationPageIndex = 0.obs;
  var eyeMenuPageIndex = 0.obs;
  var selectedStore = StoreModel(
    baslik: "Bigchefs Nişantaşı",
    altBaslik: "Şişli / İstanbul",
    asansor: "8 ",
    mekanKatSayisi: "12",
    mekanaGiris: """Mekan giriş kapısı kapı daima açıktır.

Mekanın girişinde basamak bulunmamaktadır.

Mekanın giriş kapısının eni 200cm’ dir.

Mekan girişinde engelliler için rampa bulunmamaktadır.""",
    tuvalet: "4",
    yakinUlasimNoktalari: "Lorem Ipsum",
    urunler: {
      "Çorba": {
        "FIRINLANMIŞ DOMATES ÇORBASI": 19.50,
        "MERCİMEK ÇORBASI": 15.50,
      },
      "KAHVALTI": {
        "VAN KAHVALTISI": 35.00,
        "SERPME": 25,
      },
      "YUMURTA": {}
    },
    sponsor: "Bu mekan Coca-Cola sponsorluğunda\nGörme Engelsiz Mekan olmuşur.",
    icon: Image.asset("assets/images/eye_menu/big_chefs.png"),
    acilisKapanis: "8.30, 12.40",
    aboutUs: """
  Amazon has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!
  
  We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.
  
  Thank you Amazon for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger! """,
  );
}
