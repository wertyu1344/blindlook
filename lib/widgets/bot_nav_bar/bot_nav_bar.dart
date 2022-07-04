import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';
import '../../screens/log_reg_screen/sign_up_screen.dart';

class BotNavBar extends StatelessWidget {
  Controller controller = Get.put(Controller());
  LoginClass controllerLogin = Get.put(LoginClass());
  BotNavBar({Key? key}) : super(key: key);
  Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(18),
        topLeft: Radius.circular(18),
      ),
      child: Obx(
        () => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: true,
            backgroundColor: constants.primaryColor,
            selectedItemColor: controllerLogin.selectedItemColor.value,
            unselectedItemColor: Color.fromRGBO(133, 91, 151, 1),
            onTap: (int i) {
              controllerLogin.isHomePageActive.value = "Home";
              print("seleceted${controllerLogin.selectedItemColor.value}");
              controllerLogin.isHomePageActive.value == "Home"
                  ? controllerLogin.selectedItemColor.value = Colors.white
                  : controllerLogin.selectedItemColor.value =
                      const Color.fromRGBO(133, 91, 151, 1);
              controller.pageIndex.value = i;
              controller.pageIndex.value == 1
                  ? controllerLogin.requestPageIndex.value = 0
                  : null;
              if (controller.pageIndex.value == 3) {
                Get.to(() => SignUpScreen());
                controller.pageIndex.value = 0;
              }
            },
            currentIndex: controller.pageIndex.value,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: constants.primaryColor,
                  icon: Image.asset(
                      controller.pageIndex.value == 0 &&
                              controllerLogin.isHomePageActive.value == "Home"
                          ? "assets/icons/bot_nav_bar/home_icon.png"
                          : "assets/icons/bot_nav_bar/home_icon_disable.png",
                      height: 24),
                  label: "Home"),
              BottomNavigationBarItem(
                  backgroundColor: constants.primaryColor,
                  icon: Image.asset(
                      controller.pageIndex.value == 1
                          ? "assets/icons/bot_nav_bar/request_icon.png"
                          : "assets/icons/bot_nav_bar/requests_icon_disable.png",
                      height: 24),
                  label: "Requests"),
              controllerLogin.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: constants.primaryColor,
                      icon: Image.asset(
                          controller.pageIndex.value == 2
                              ? "assets/icons/bot_nav_bar/request_icon.png"
                              : "assets/icons/bot_nav_bar/news_icon_disable.png",
                          height: 24),
                      label: "News")
                  : BottomNavigationBarItem(
                      backgroundColor: constants.primaryColor,
                      icon: Image.asset(
                          controller.pageIndex.value == 2
                              ? "assets/icons/bot_nav_bar/simulation_icon.png"
                              : "assets/icons/bot_nav_bar/simulation_icon_disable.png",
                          height: 24),
                      label: "Simuation"),
              controllerLogin.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: constants.primaryColor,
                      icon: Image.asset(
                          controller.pageIndex.value == 3
                              ? "assets/icons/bot_nav_bar/sign_up_icon_disable.png"
                              : "assets/icons/bot_nav_bar/sign_up_icon_disable.png",
                          height: 24),
                      label: "Sign Up")
                  : BottomNavigationBarItem(
                      backgroundColor: constants.primaryColor,
                      icon: Image.asset(
                          controller.pageIndex.value == 3
                              ? "assets/icons/bot_nav_bar/settings_icon.png"
                              : "assets/icons/bot_nav_bar/settings_icon_disable.png",
                          height: 24),
                      label: "Settings"),
            ]),
      ),
    );
  }
}
