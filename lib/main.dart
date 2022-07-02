import 'package:blindlook/widgets/bot_nav_bar/bot_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BotNavBar(),
          body: controller.pages.elementAt(controller.pageIndex)),
    );
  }
}
