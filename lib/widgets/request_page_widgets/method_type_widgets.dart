import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';

class MethodType extends StatelessWidget {
  final EdgeInsets padding;
  final Function onTab;
  final String imagePath;
  MethodType(
      {Key? key,
      required this.imagePath,
      required this.onTab,
      required this.padding})
      : super(key: key);
  final Constants constants = Constants();

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
                color: constants.primaryColor,
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
                      constants.homePageContentTextStyle.copyWith(fontSize: 20),
                )
              ],
            )),
      ),
    );
  }
}
