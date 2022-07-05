import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsWidget extends StatelessWidget {
  final String imagePath;
  final Function onTapCallBack;
  SettingsWidget(
      {Key? key, required this.imagePath, required this.onTapCallBack})
      : super(key: key);
  final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapCallBack(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Row(
          children: [
            Image.asset(
              "assets/images/settings_page/$imagePath.png",
              width: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              imagePath,
              style: constants.requestTextStyleMedium.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
