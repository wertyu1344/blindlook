import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/screens/home_screen/eye_brands_screen/eye_brands_screen.dart';
import 'package:blindlook/screens/home_screen/home_screen.dart';
import 'package:blindlook/screens/log_reg_screen/sign_up_screen.dart';
import 'package:blindlook/screens/news_screen/news_screen.dart';
import 'package:blindlook/screens/request_screen/request_screen.dart';
import 'package:blindlook/screens/settings_screen/settings_screen.dart';
import 'package:blindlook/screens/simulation_screen/simulation_screen.dart';
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
  Constants constants = Get.put(Constants());

  Controller controller = Get.put(Controller());
  LoginClass controllerLogin = Get.put(LoginClass());
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      RequestScreen(),
      NewsScreen(),
      SignUpScreen(),
      EyeBrands(),
    ];
    List<Widget> pagesSingIn = [
      HomePage(),
      RequestScreen(),
      SimulationScreen(),
      SettingsScreen(),
    ];
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Cera'),
      home: SafeArea(
        child: Obx(
          () => Scaffold(
              key: _scaffoldKey,
              extendBody: true,
              bottomNavigationBar: SizedBox(height: 80, child: BotNavBar()),
              body: controllerLogin.isLogin == false
                  ? pages.elementAt(controller.pageIndex.value)
                  : pagesSingIn.elementAt(controller.pageIndex.value)),
        ),
      ),
    );
  }
}
