import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/eye_menu/eye_menu_app_bar.dart';

class EyeMenu2 extends StatelessWidget {
  EyeMenu2({Key? key}) : super(key: key);

  Constants constants = Get.find();
  LoginClass controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: constants.pagePadding,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 15,
          ),
          EyeMenuAppBar(
              controller: controller, size: size, constants: constants),
          SizedBox(height: 30),
          Text(
            controller.selectedStore.baslik,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            controller.selectedStore.altBaslik,
            style: TextStyle(
              color: constants.primaryColor.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            controller.selectedStore.sponsor,
            textAlign: TextAlign.center,
            style: constants.requestTextStyleTitle
                .copyWith(fontWeight: FontWeight.w200, fontSize: 18),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EyeMenuWidget(
                        height: size.height / 3,
                        constants: constants,
                        imagePath: "Erişebilirlik Haritası",
                      ),
                      EyeMenuWidget(
                        height: size.height / 6,
                        constants: constants,
                        imagePath: "Hakkında",
                      ),
                    ]),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EyeMenuWidget(
                        height: size.height / 6,
                        constants: constants,
                        imagePath: "Menu",
                      ),
                      EyeMenuWidget(
                        height: size.height / 3,
                        constants: constants,
                        imagePath: "Lokasyon",
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EyeMenuWidget extends StatelessWidget {
  final double height;
  final Constants constants;
  final String imagePath;
  EyeMenuWidget(
      {Key? key,
      required this.constants,
      required this.imagePath,
      required this.height})
      : super(key: key);
  LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          imagePath == 'Erişebilirlik Haritası'
              ? controller.eyeMenuPageIndex.value = 3
              : imagePath == 'Hakkında'
                  ? controller.eyeMenuPageIndex.value = 4
                  : imagePath == 'Menu'
                      ? controller.eyeMenuPageIndex.value = 5
                      : controller.eyeMenuPageIndex.value = 6;
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
              color: constants.primaryColor,
              borderRadius: BorderRadius.circular(12)),
          height: height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/eye_menu/$imagePath.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                imagePath == "Erişebilirlik Haritası"
                    ? "Erişebilirlik\nHaritası"
                    : imagePath,
                style: constants.requestTextStyleTitleWhite,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
