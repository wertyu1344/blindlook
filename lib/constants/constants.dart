import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants extends GetxController {
  TextStyle requestTextStyleTitle = const TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 16,
      fontWeight: FontWeight.w500);
  TextStyle requestTextStyleTitleWhite = const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 16,
      fontWeight: FontWeight.w500);
  TextStyle requestTextStyleMedium = const TextStyle(
      color: Color.fromRGBO(48, 0, 68, 1),
      fontSize: 14,
      fontWeight: FontWeight.w500);
  TextStyle homePageContentTextStyle = const TextStyle(color: Colors.white);
  var pagePadding = const EdgeInsets.all(12.0);
  Color primaryColor = const Color.fromRGBO(48, 0, 68, 1);
  var eyeBrandsListViewTextStyleSelected = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400);
  var eyeBrandsListViewTextStyleNONSelected = const TextStyle(
      color: Colors.white54, fontSize: 16, fontWeight: FontWeight.w400);
}
