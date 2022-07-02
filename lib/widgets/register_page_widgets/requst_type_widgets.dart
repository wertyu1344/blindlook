import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';

class RequestWidgets extends StatelessWidget {
  final Constants constants = Constants();
  final EdgeInsets padding;
  final String imagePath;

  RequestWidgets({Key? key, required this.imagePath, required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: padding,
      child: Container(
          width: size.width / 3.3,
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
                imagePath,
                style: constants.homePageContentTextStyle,
              )
            ],
          )),
    );
  }
}
