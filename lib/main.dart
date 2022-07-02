import 'package:blindlook/widgets/bot_nav_bar/bot_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            extendBody: true,
            bottomNavigationBar: BotNavBar(),
            body: controller.isLogin == false
                ? controller.pages.elementAt(controller.pageIndex.value)
                : controller.pagesSingIn.elementAt(controller.pageIndex.value)),
      ),
    );
  }
}
