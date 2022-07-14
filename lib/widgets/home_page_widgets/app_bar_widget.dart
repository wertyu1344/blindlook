import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/widgets/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  late bool isLogin;
  AppBarWidget({Key? key, required this.isLogin}) : super(key: key);
  LoginClass controllerLogin = Get.put(LoginClass());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              controllerLogin.isLogin.value = !controllerLogin.isLogin.value;
            },
            child: Image.asset(
              "assets/images/home_page_images/glasses.png",
              height: size.height / 16,
              width: size.width / 8,
            ),
          ),
          InkWell(
            onTap: () {
              if (isLogin) {
                showDialog(
                    context: context,
                    builder: (context) => NotificationWidget(context: context));
              }
            },
            child: Image.asset(
              isLogin
                  ? "assets/images/home_page_images/notification.png"
                  : "assets/images/home_page_images/send.png",
              height: size.height / 22,
              width: size.width / 8,
            ),
          ),
        ],
      ),
    );
  }
}
