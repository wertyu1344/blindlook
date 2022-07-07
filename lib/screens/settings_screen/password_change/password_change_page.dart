import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/settings_page_widgets/password_change_text_field.dart';

class PasswordChange extends StatelessWidget {
  PasswordChange({Key? key}) : super(key: key);
  final Constants constants = Get.find();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: constants.pagePadding,
        color: Colors.white,
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Image.asset(
                    "assets/images/request_page_images/back.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              Text(
                "Settings",
                style: constants.requestTextStyleTitle,
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  height: 30,
                  width: 30,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          PasswordTextField(controller1),
          PasswordTextField(controller2),
          PasswordTextField(controller3),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
              ),
              child: Image.asset(
                  "assets/images/request_page_images/send_req.png",
                  fit: BoxFit.fitWidth),
            ),
          ),
        ]),
      ),
    );
  }
}
