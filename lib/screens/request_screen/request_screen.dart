import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/request_screen/request_record_video.dart';
import 'package:blindlook/screens/request_screen/request_record_voice.dart';
import 'package:blindlook/screens/request_screen/request_screen_choose_type.dart';
import 'package:blindlook/screens/request_screen/request_screen_tag_your.dart';
import 'package:blindlook/screens/request_screen/request_select_method.dart';
import 'package:blindlook/screens/request_screen/request_tell_us_about.dart';
import 'package:flutter/material.dart';

import 'request_successfully.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  LoginClass controller = LoginClass();
  int selectedMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true, body: body());
  }

  body() {
    switch (controller.requestPageIndex.value) {
      case 0:
        return RequestPageChooseRequest(
          itemCount: 4,
          incradeIndex: () {
            controller.requestPageIndex.value = 1;
            setState(() {});
          },
        );

      case 1:
        return RequestSelectMethod(
          goBack: () {
            controller.requestPageIndex.value = 0;

            setState(() {});
          },
          goNext: (selectedMethodCall) {
            selectedMethod = selectedMethodCall;
            controller.requestPageIndex.value = selectedMethodCall == 1
                ? 2
                : selectedMethodCall == 2
                    ? 3
                    : 4;
            setState(() {});
          },
        );
      case 2:
        return RequestTellUsAbout(
          goBack: () {
            controller.requestPageIndex.value = 1;

            setState(() {});
          },
          goNext: () {
            controller.requestPageIndex.value = 5;
            setState(() {});
          },
        );
      case 3:
        return RequestRecordVoice(
          goBack: () {
            controller.requestPageIndex.value = 1;
            setState(() {});
          },
          goNext: () {
            controller.requestPageIndex.value = 5;
            setState(() {});
          },
        );
      case 4:
        return RequestRecordVideo(
          goBack: () {
            controller.requestPageIndex.value = 1;
            setState(() {});
          },
          goNext: () {
            controller.requestPageIndex.value = 5;
            setState(() {});
          },
        );
      case 5:
        return RequestScreenTagYour(
          goBack: () {
            controller.requestPageIndex.value = 3;

            setState(() {});
          },
          goNext: () {
            controller.requestPageIndex.value = 6;
            setState(() {});
          },
        );

      case 6:
        return RequestSuccesfully(backToHome: () {
          controller.requestPageIndex.value = 0;
          setState(() {});
        });

      default:
        return RequestPageChooseRequest(
          itemCount: 4,
          incradeIndex: () {
            controller.requestPageIndex.value++;

            setState(() {});
          },
        );
    }
  }
}
