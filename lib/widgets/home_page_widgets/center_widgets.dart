import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class CenterWidgets extends StatelessWidget {
  final EdgeInsets padding;
  final String imagePath;
  final int flex;

  CenterWidgets(
      {Key? key,
      required this.imagePath,
      required this.flex,
      required this.padding})
      : super(key: key);
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      flex: flex,
      child: Padding(
        padding: padding,
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(48, 0, 68, 1),
                borderRadius: BorderRadiusDirectional.circular(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/home_page_images/content/$imagePath.png",
                  width: size.width / 6,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  imagePath,
                  style: controller.HomePageContentTextStyle,
                )
              ],
            )),
      ),
    );
  }
}
