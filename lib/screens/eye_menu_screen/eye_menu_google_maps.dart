import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controller/controller.dart';

class EyeMenuGooglePlay extends StatelessWidget {
  EyeMenuGooglePlay({Key? key}) : super(key: key);
  final Constants constants = Get.find();
  final LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  controller.eyeMenuPageIndex.value = 2;
                },
                icon: Image.asset(
                  "assets/images/request_page_images/back.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              ),
              Text(
                "EyeMenu",
                style: constants.requestTextStyleTitle.copyWith(fontSize: 22),
              ),
              IconButton(
                onPressed: () => controller.eyeMenuPageIndex.value = 7,
                icon: Image.asset(
                  "assets/images/eye_menu/edit.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              )
            ],
          ),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: constants.primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  "Google Maps",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
