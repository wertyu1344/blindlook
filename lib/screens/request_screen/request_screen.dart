import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/request_screen/request_screen_choose_type.dart';
import 'package:blindlook/screens/request_screen/request_select_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);
  LoginClass controller = LoginClass();
  List pages = [
    RequestPageChooseRequest(itemCount: 4),
    RequestSelectMethod(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() => pages[controller.requestPageIndex.value]);
  }
}
