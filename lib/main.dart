import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/screens/choose_location_screen/choose_location_screen.dart';
import 'package:blindlook/screens/home_screen/eye_brands_screen/eye_brands_screen.dart';
import 'package:blindlook/screens/home_screen/home_screen.dart';
import 'package:blindlook/screens/log_reg_screen/sign_up_screen.dart';
import 'package:blindlook/screens/request_screen/request_screen.dart';
import 'package:blindlook/screens/settings_screen/settings_screen.dart';
import 'package:blindlook/screens/simulation_screen/simulation.dart';
import 'package:blindlook/widgets/bot_nav_bar/bot_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Constants constants = Get.put(Constants());

  Controller controller = Get.put(Controller());
  LoginClass controllerLogin = Get.put(LoginClass());

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      const RequestScreen(),
      SignUpScreen(),
    ];
    List<Widget> pagesSingIn = [
      const HomePage(),
      RequestScreen(),
      SimulationPage(),
      SettingsScreen(),
    ];
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Cera'),
      home: SafeArea(
        child: Obx(
          () => controllerLogin.isFirtsTime.value
              ? ChooseLocation()
              : Scaffold(
                  key: scaffoldKey,
                  extendBody: true,
                  bottomNavigationBar: BotNavBar(),
                  body: controllerLogin.isLogin == false
                      ? pages.elementAt(controller.pageIndex.value)
                      : pagesSingIn.elementAt(controller.pageIndex.value)),
        ),
      ),
    );
  }
}
