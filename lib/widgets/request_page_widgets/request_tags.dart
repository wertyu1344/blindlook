import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestTags extends StatelessWidget {
  RequestTags({Key? key}) : super(key: key);
  Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(246, 241, 241, 241),
        ),
        child: Text(
          "Lorem Ipsum",
          style: TextStyle(fontSize: 16, color: constants.primaryColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
