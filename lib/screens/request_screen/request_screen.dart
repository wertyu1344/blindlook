import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/request_screen/request_screen_choose_type.dart';
import 'package:blindlook/screens/request_screen/request_select_method.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  LoginClass controller = LoginClass();

  @override
  Widget build(BuildContext context) {
    if (controller.requestPageIndex.value == 0) {
      return RequestPageChooseRequest(
        itemCount: 4,
        callBack: () {
          controller.requestPageIndex.value += 1;
          setState(() {});
        },
      );
    } else {
      return RequestSelectMethod();
    }
  }
}
