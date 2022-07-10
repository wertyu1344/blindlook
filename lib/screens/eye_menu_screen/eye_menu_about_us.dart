import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controller/controller.dart';
import '../../widgets/eye_menu/eye_menu_app_bar.dart';

class EyeMenuAboutUs extends StatelessWidget {
  EyeMenuAboutUs({Key? key}) : super(key: key);
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
          const SizedBox(height: 30),
          Text(
            controller.selectedStore.baslik,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            controller.selectedStore.altBaslik,
            style: TextStyle(
              color: constants.primaryColor.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          controller.selectedStore.icon,
          const SizedBox(height: 40),
          Text(controller.selectedStore.aboutUs)
        ],
      ),
    );
  }
}
