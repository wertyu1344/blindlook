import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class BotNavBar extends StatelessWidget {
  Controller controller = Get.put(Controller());
  BotNavBar({Key? key}) : super(key: key);

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
            backgroundColor: Color.fromRGBO(48, 0, 68, 1),
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromRGBO(133, 91, 151, 1),
            onTap: (int i) => controller.pageIndex.value = i,
            currentIndex: controller.pageIndex.value,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                  icon: Image.asset(
                      controller.pageIndex.value == 0
                          ? "assets/icons/bot_nav_bar/home_icon.png"
                          : "assets/icons/bot_nav_bar/home_icon_disable.png",
                      height: 24),
                  label: "Home"),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                  icon: Image.asset(
                      controller.pageIndex.value == 1
                          ? "assets/icons/bot_nav_bar/request_icon.png"
                          : "assets/icons/bot_nav_bar/requests_icon_disable.png",
                      height: 24),
                  label: "Requests"),
              controller.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          controller.pageIndex.value == 2
                              ? "assets/icons/bot_nav_bar/request_icon.png"
                              : "assets/icons/bot_nav_bar/news_icon_disable.png",
                          height: 24),
                      label: "News")
                  : BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          controller.pageIndex.value == 2
                              ? "assets/icons/bot_nav_bar/simulation_icon.png"
                              : "assets/icons/bot_nav_bar/simulation_icon_disable.png",
                          height: 24),
                      label: "Simuation"),
              controller.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          controller.pageIndex.value == 3
                              ? "assets/icons/bot_nav_bar/sign_up_icon_disable.png"
                              : "assets/icons/bot_nav_bar/sign_up_icon_disable.png",
                          height: 24),
                      label: "Sign Up")
                  : BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
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
