import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/eye_menu/eye_menu_app_bar.dart';

class ErisebilirlikHaritasi extends StatelessWidget {
  ErisebilirlikHaritasi({Key? key}) : super(key: key);
  LoginClass controller = Get.find();
  Constants constants = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: ListView(
        children: [
          EyeMenuAppBar(
              controller: controller, size: size, constants: constants),
          ExpansionListTiles(
            title: "Açılış-Kapanış Saatleri",
            explanation: controller.selectedStore.acilisKapanis,
          ),
          ExpansionListTiles(
            title: "Yakın Ulaşım Noktaları",
            explanation: controller.selectedStore.yakinUlasimNoktalari,
          ),
          ExpansionListTiles(
            title: "Mekana Giriş",
            explanation: controller.selectedStore.mekanaGiris,
          ),
          ExpansionListTiles(
            title: "Mekan Kat Sayısı",
            explanation: controller.selectedStore.mekanKatSayisi,
          ),
          ExpansionListTiles(
            title: "Asansör",
            explanation: controller.selectedStore.asansor,
          ),
          ExpansionListTiles(
            title: "Asansör",
            explanation: controller.selectedStore.asansor,
          ),
        ],
      ),
    );
  }
}

class ExpansionListTiles extends StatelessWidget {
  final String title;
  final String explanation;
  ExpansionListTiles({
    Key? key,
    required this.title,
    required this.explanation,
  }) : super(key: key);

  final LoginClass controller = Get.find();
  final Constants constants = Get.find();
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(left: 14),
      collapsedTextColor: constants.primaryColor,
      collapsedIconColor: constants.primaryColor,
      iconColor: constants.primaryColor,
      textColor: constants.primaryColor,
      title: Text(
        title,
        style: constants.requestTextStyleTitle,
      ),
      children: [
        Text(
          explanation,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
