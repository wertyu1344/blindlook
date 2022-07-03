import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CenterWidgets extends StatelessWidget {
  final EdgeInsets padding;
  final String imagePath;
  final String text;
  final int flex;
  var onTap;
  Constants constants = Constants();

  CenterWidgets(
      {Key? key,
      required this.imagePath,
      required this.flex,
      required this.padding,
      required this.onTap,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Container(
              decoration: BoxDecoration(
                  color: constants.primaryColor,
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
                    text,
                    style: constants.homePageContentTextStyle,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
