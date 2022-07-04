import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants extends GetxController {
  TextStyle requestTextStyleTitle = const TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 26,
      fontWeight: FontWeight.w500);
  TextStyle requestTextStyleTitleWhite = const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 26,
      fontWeight: FontWeight.w500);
  TextStyle requestTextStyleMedium = const TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 17,
      fontWeight: FontWeight.w500);
  TextStyle homePageContentTextStyle = const TextStyle(color: Colors.white);
  var pagePadding = const EdgeInsets.all(12.0);
  Color primaryColor = const Color.fromRGBO(48, 0, 68, 1);
  TextStyle eyeBrandsListViewTextStyleSelected =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400);
  TextStyle eyeBrandsListViewTextStyleNONSelected = TextStyle(
      color: Colors.white54, fontSize: 20, fontWeight: FontWeight.w400);
}
