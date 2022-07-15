import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/about_us/about_us.dart';
import 'package:blindlook/screens/eye_menu_screen/eye_menu.dart';
import 'package:blindlook/screens/home_screen/eye_brands_screen/eye_brands_screen.dart';
import 'package:blindlook/screens/home_screen/story_screen/story_screen.dart';
import 'package:blindlook/screens/log_reg_screen/sign_up_screen.dart';
import 'package:blindlook/screens/loyality/loyality.dart';
import 'package:blindlook/screens/news_screen/news_screen.dart';
import 'package:blindlook/widgets/home_page_widgets/center_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../widgets/home_page_widgets/app_bar_widget.dart';
import '../../widgets/home_page_widgets/story_avatars.dart';
import '../community_screen/community_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Constants constants = Get.find<Constants>();
  Controller controller = Get.put(Controller());
  LoginClass controllerLogin = Get.put(LoginClass());

  final double butonlarArasiBosluk = 10;

  @override
  Widget build(BuildContext context) {
    return Obx(() => controllerLogin.isHomePageActive.value == "Home"
        ? mainHomePage()
        : controllerLogin.isHomePageActive.value == "EyeBrands"
            ? EyeBrands()
            : controllerLogin.isHomePageActive.value == "Loyality"
                ? LoyalityScreen()
                : controllerLogin.isHomePageActive.value == "News"
                    ? NewsScreen()
                    : controllerLogin.isHomePageActive.value == "AboutUs"
                        ? const AboutUsScreen()
                        : controllerLogin.isHomePageActive.value == "EyeMenu"
                            ? EyeMenu()
                            : controllerLogin.isHomePageActive.value ==
                                    "Community"
                                ? CommunityScreen()
                                : const SizedBox());
  }

  Padding mainHomePage() {
    controllerLogin.isLogin.value == false
        ? controller.homepageCenter1.value = "EyeBrands"
        : controller.homepageCenter1.value = "Simulations";
    controllerLogin.isLogin.value == false
        ? controller.homepageCenter2.value = "EyeMenu"
        : controller.homepageCenter2.value = "AboutUs";
    controllerLogin.isLogin.value == false
        ? controller.homepageCenter3.value = "Request"
        : controller.homepageCenter3.value = "Community";
    controllerLogin.isLogin.value == false
        ? controller.homePageCenter4.value = "News"
        : controller.homePageCenter4.value = "News";
    controllerLogin.isLogin.value == false
        ? controller.homePageCenter5.value = "SignUp"
        : controller.homePageCenter5.value = "Loyality";
    return Padding(
      padding: constants.pagePadding,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: AppBarWidget(isLogin: controllerLogin.isLogin.value)),
          buildSizedBox(h: 30),
          Expanded(
              flex: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => StoryAvatars(
                  index: index,
                  onTap: () => Get.to(
                    StoryScreen(
                      index: index,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CenterWidgets(
                          imagePath: controllerLogin.isLogin.value
                              ? "Simulations"
                              : "EyeBrands",
                          flex: 14,
                          padding: EdgeInsets.only(
                              top: 45,
                              bottom: butonlarArasiBosluk,
                              right: butonlarArasiBosluk),
                          onTap: () {
                            if (controller.homepageCenter1.value ==
                                "EyeBrands") {
                              controllerLogin.selectedItemColor.value =
                                  const Color.fromRGBO(133, 91, 151, 1);
                              controllerLogin.isHomePageActive.value =
                                  "EyeBrands";
                            } else {
                              if (controller.homepageCenter1.value ==
                                  "Simulations") {
                                controller.pageIndex.value = 2;
                              }
                            }
                          },
                          text: controller.homepageCenter1.value,
                        ),
                        CenterWidgets(
                          imagePath: controllerLogin.isLogin.value
                              ? "BlindLook"
                              : "book",
                          flex: 10,
                          padding: EdgeInsets.only(right: butonlarArasiBosluk),
                          onTap: () {
                            controllerLogin.selectedItemColor.value =
                                const Color.fromRGBO(133, 91, 151, 1);
                            if (controller.homepageCenter2.value == "AboutUs") {
                              controllerLogin.isHomePageActive.value =
                                  "AboutUs";
                            } else {
                              controllerLogin.isHomePageActive.value =
                                  "EyeMenu";
                              controllerLogin.selectedItemColor.value =
                                  const Color.fromRGBO(133, 91, 151, 1);
                            }
                          },
                          text: controller.homepageCenter2.value,
                        ),
                        buildSizedBox(h: 80)
                      ]),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CenterWidgets(
                        imagePath: controllerLogin.isLogin.value
                            ? "Community"
                            : "Request",
                        flex: 15,
                        padding: EdgeInsets.only(
                            bottom: butonlarArasiBosluk, top: 45),
                        onTap: () {
                          if (controller.homepageCenter3.value == "Community") {
                            controllerLogin.isHomePageActive.value =
                                "Community";
                            controllerLogin.selectedItemColor.value =
                                const Color.fromRGBO(133, 91, 151, 1);
                          } else {
                            controller.pageIndex.value = 1;
                          }
                        },
                        text: controller.homepageCenter3.value,
                      ),
                      CenterWidgets(
                        imagePath: "News",
                        flex: 10,
                        padding: EdgeInsets.only(bottom: butonlarArasiBosluk),
                        onTap: () {
                          controllerLogin.isHomePageActive.value = "News";
                          controllerLogin.selectedItemColor.value =
                              const Color.fromRGBO(133, 91, 151, 1);
                        },
                        text: controller.homePageCenter4.value,
                      ),
                      CenterWidgets(
                        imagePath: controllerLogin.isLogin.value
                            ? "Loyalty"
                            : "SignUp",
                        flex: 10,
                        padding: EdgeInsets.zero,
                        onTap: () {
                          if (controller.homePageCenter5.value == "SignUp") {
                            Get.to(SignUpScreen());
                          } else {
                            controllerLogin.isHomePageActive.value = "Loyality";
                            controllerLogin.selectedItemColor.value =
                                const Color.fromRGBO(133, 91, 151, 1);
                          }
                        },
                        text: controller.homePageCenter5.value,
                      ),
                      buildSizedBox(h: 80)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildSizedBox({double h = 0, double w = 0}) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}
