import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/home_screen/eye_brands_screen/eye_brands_screen.dart';
import 'package:blindlook/widgets/home_page_widgets/center_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../widgets/home_page_widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Constants constants = Constants();
  Controller controller = Get.put(Controller());
  LoginClass controllerLogin = Get.put(LoginClass());

  final double butonlarArasiBosluk = 10;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controllerLogin.isHomePageActive.value == "Home"
          ? mainHomePage()
          : controllerLogin.isHomePageActive.value == "EyeBrands"
              ? EyeBrands()
              : SizedBox(),
    );
  }

  Padding mainHomePage() {
    return Padding(
      padding: constants.pagePadding,
      child: Column(
        children: [
          Expanded(
              flex: 2, child: AppBarWidget(isLogin: controllerLogin.isLogin)),
          buildSizedBox(h: 30),
          Expanded(
            flex: 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                4,
                (index) => Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/home_page_images/avatars/avatar-${index + 2}.png",
                      ),
                    ),
                    buildSizedBox(w: 15)
                  ],
                ),
              ),
            ),
          ),
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
                          imagePath: controllerLogin.isLogin
                              ? "EyeBrands"
                              : "Simulations",
                          flex: 14,
                          padding: EdgeInsets.only(
                              top: 45,
                              bottom: butonlarArasiBosluk,
                              right: butonlarArasiBosluk),
                          onTap: () {
                            controllerLogin.selectedItemColor.value =
                                Color.fromRGBO(133, 91, 151, 1);
                            controllerLogin.isHomePageActive.value =
                                "EyeBrands";
                            print(controllerLogin.isHomePageActive);
                          },
                        ),
                        CenterWidgets(
                          imagePath: "BlindLook",
                          flex: 10,
                          padding: EdgeInsets.only(right: butonlarArasiBosluk),
                          onTap: null,
                        ),
                        buildSizedBox(h: 80)
                      ]),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CenterWidgets(
                        imagePath:
                            controllerLogin.isLogin ? "Request" : "Community",
                        flex: 15,
                        padding: EdgeInsets.only(
                            bottom: butonlarArasiBosluk, top: 45),
                        onTap: () {
                          controller.pageIndex.value = 1;
                        },
                      ),
                      CenterWidgets(
                        imagePath: "News",
                        flex: 10,
                        padding: EdgeInsets.only(bottom: butonlarArasiBosluk),
                        onTap: null,
                      ),
                      CenterWidgets(
                        imagePath:
                            controllerLogin.isLogin ? "SignUp" : "Loyalty",
                        flex: 10,
                        padding: EdgeInsets.zero,
                        onTap: null,
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
