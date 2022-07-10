import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MethodType extends StatelessWidget {
  final int selected;
  final EdgeInsets padding;
  final Function onTab;
  final String imagePath;
  final int deger;
  MethodType(
      {Key? key,
      required this.imagePath,
      required this.onTab,
      required this.padding,
      required this.deger,
      required this.selected})
      : super(key: key);
  final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onTab(imagePath);
      },
      child: Padding(
        padding: padding,
        child: Container(
            width: size.width / 3.4,
            height: size.height / 3.4,
            decoration: BoxDecoration(
                color: selected == deger || selected == 0
                    ? constants.primaryColor
                    : constants.primaryColor.withOpacity(0.6),
                borderRadius: BorderRadiusDirectional.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/request_page_images/$imagePath.png",
                  height: size.width / 10,
                  width: size.width / 10,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  imagePath.replaceAll(" ", "\n"),
                  style:
                      constants.homePageContentTextStyle.copyWith(fontSize: 16),
                )
              ],
            )),
      ),
    );
  }
}
