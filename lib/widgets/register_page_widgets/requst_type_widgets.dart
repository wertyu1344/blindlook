import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';

class RequestWidgets extends StatelessWidget {
  final LoginClass controller = Get.put(LoginClass());
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
              color: Color.fromRGBO(48, 0, 68, 1),
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
                style: controller.homePageContentTextStyle,
              )
            ],
          )),
    );
  }
}
