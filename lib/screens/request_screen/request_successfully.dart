import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestSuccesfully extends StatelessWidget {
  final Function backToHome;
  RequestSuccesfully({Key? key, required this.backToHome}) : super(key: key);
  Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Request",
            style: constants.requestTextStyleTitle,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/request_page_images/verify.png",
                  width: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your request successfully sent.\nWe’ll get back to you soon.",
                  style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                )
              ],
            )),
          ),
          OutlinedButton(
            onPressed: () {
              backToHome();
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
            ),
            child: Image.asset(
                "assets/images/request_page_images/back_to_request_button.png",
                fit: BoxFit.fitWidth),
          ),
          const SizedBox(
            height: 130,
          )
        ],
      ),
    );
  }
}
