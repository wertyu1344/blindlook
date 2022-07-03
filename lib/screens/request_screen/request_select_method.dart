import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestSelectMethod extends StatelessWidget {
  RequestSelectMethod({Key? key}) : super(key: key);
  final Constants constants = Constants();
  LoginClass controller = Get.find<LoginClass>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => controller.requestPageIndex - 1,
                icon: Image.asset(
                  "assets/images/request_page_images/back.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              ),
              Text(
                "Request",
                style: constants.requestTextStyleTitle,
              ),
              Image.asset(
                "assets/images/request_page_images/message-question.png",
                height: size.height / 22,
                width: size.width / 8,
              )
            ],
          ),
        ],
      ),
    );
  }
}
