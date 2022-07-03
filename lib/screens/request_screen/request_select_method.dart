import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/request_page_widgets/method_type_widgets.dart';

class RequestSelectMethod extends StatelessWidget {
  final Function downgrade;
  RequestSelectMethod({Key? key, required this.downgrade}) : super(key: key);
  final Constants constants = Constants();
  LoginClass controller = Get.find<LoginClass>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  downgrade();
                },
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
          SizedBox(
            height: 30,
          ),
          Text(
            "What is your request about?",
            style: constants.requestTextStyleMedium,
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              hintText: "Lorem ipsum dolor...",
              hintStyle: TextStyle(
                  color: constants.primaryColor.withOpacity(0.6),
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  color: constants.primaryColor,
                  style: BorderStyle.solid,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  color: constants.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: constants.primaryColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: constants.primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Text(
            "Select the method you’ll like to use",
            style: constants.requestTextStyleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MethodType(
                  imagePath: "assets/images/request_page_images/Just_Text.png",
                  onTab: () {},
                  padding: EdgeInsets.only(right: 8)),
              MethodType(
                  imagePath:
                      "assets/images/request_page_images/Video_Record.png",
                  onTab: () {},
                  padding: EdgeInsets.only(right: 8)),
              MethodType(
                  imagePath:
                      "assets/images/request_page_images/Photo_Video.png",
                  onTab: () {},
                  padding: EdgeInsets.zero),
            ],
          ),
        ],
      ),
    );
  }
}
