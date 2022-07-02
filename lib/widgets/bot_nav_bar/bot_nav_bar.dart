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
            showUnselectedLabels: true,
            backgroundColor: Color.fromRGBO(48, 0, 68, 1),
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromRGBO(133, 91, 151, 1),
            onTap: (int i) => controller.pageIndex.value = i,
            currentIndex: controller.pageIndex.value,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                  icon: Image.asset("assets/icons/bot_nav_bar/home_icon.png",
                      height: 24),
                  label: "Home"),
              BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                  icon: Image.asset("assets/icons/bot_nav_bar/news_icon.png",
                      height: 24),
                  label: "Requests"),
              controller.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          "assets/icons/bot_nav_bar/home_icon.png",
                          height: 24),
                      label: "News")
                  : BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          "assets/icons/bot_nav_bar/home_icon.png",
                          height: 24),
                      label: "News"),
              controller.isLogin == false
                  ? BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          "assets/icons/bot_nav_bar/home_icon.png",
                          height: 24),
                      label: "Sign Up")
                  : BottomNavigationBarItem(
                      backgroundColor: Color.fromRGBO(48, 0, 68, 1),
                      icon: Image.asset(
                          "assets/icons/bot_nav_bar/home_icon.png",
                          height: 24),
                      label: "News"),
            ]),
      ),
    );
  }
}
