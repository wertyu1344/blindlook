import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/widgets/home_page_widgets/center_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/home_page_widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  LoginClass controller = Get.put(LoginClass());

  @override
  Widget build(BuildContext context) {
    double butonlarArasiBosluk = 10;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Expanded(flex: 2, child: AppBarWidget()),
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
                              imagePath: controller.isLogin
                                  ? "EyeBrands"
                                  : "Simulations",
                              flex: 14,
                              padding: EdgeInsets.only(
                                  top: 45,
                                  bottom: butonlarArasiBosluk,
                                  right: butonlarArasiBosluk)),
                          CenterWidgets(
                            imagePath: "BlindLook",
                            flex: 10,
                            padding:
                                EdgeInsets.only(right: butonlarArasiBosluk),
                          ),
                          buildSizedBox(h: 80)
                        ]),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CenterWidgets(
                            imagePath: "Request",
                            flex: 15,
                            padding: EdgeInsets.only(
                                bottom: butonlarArasiBosluk, top: 45)),
                        CenterWidgets(
                            imagePath: "News",
                            flex: 10,
                            padding:
                                EdgeInsets.only(bottom: butonlarArasiBosluk)),
                        CenterWidgets(
                            imagePath: "SignUp",
                            flex: 10,
                            padding: EdgeInsets.zero),
                        buildSizedBox(h: 80)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
