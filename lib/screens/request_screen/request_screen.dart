import 'package:blindlook/controller/controller.dart';
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
            controller.requestPageIndex.value++;
            setState(() {});
          },
        );

      case 1:
        return RequestSelectMethod(
          downgrade: () {
            controller.requestPageIndex.value--;

            setState(() {});
          },
          incrade: () {
            controller.requestPageIndex.value++;
            setState(() {});
          },
        );
      case 2:
        return RequestTellUsAbout(
          downgrade: () {
            controller.requestPageIndex.value--;

            setState(() {});
          },
          incrade: () {
            controller.requestPageIndex.value++;
            setState(() {});
          },
        );
      case 3:
        return RequestScreenTagYour(
          downgrade: () {
            controller.requestPageIndex.value--;

            setState(() {});
          },
          incrade: () {
            controller.requestPageIndex.value++;
            setState(() {});
          },
        );

      case 4:
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
