import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/request_page_widgets/method_type_widgets.dart';

class RequestSelectMethod extends StatefulWidget {
  final Function downgrade;
  final Function incrade;
  const RequestSelectMethod(
      {Key? key, required this.downgrade, required this.incrade})
      : super(key: key);

  @override
  State<RequestSelectMethod> createState() => _RequestSelectMethodState();
}

class _RequestSelectMethodState extends State<RequestSelectMethod> {
  Constants constants = Get.find<Constants>();

  final LoginClass controller = Get.find<LoginClass>();

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  widget.downgrade();
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
          const SizedBox(
            height: 30,
          ),
          Text(
            "What is your request about?",
            style: constants.requestTextStyleMedium,
          ),
          const SizedBox(
            height: 40,
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
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MethodType(
                  selected: selected,
                  deger: 1,
                  imagePath: "Just Text",
                  onTab: (imagePath) {
                    selected = 1;
                    setState(() {});
                  },
                  padding: EdgeInsets.only(right: 7)),
              MethodType(
                  selected: selected,
                  deger: 2,
                  imagePath: "Voice Record",
                  onTab: (imagePath) {
                    selected = 2;

                    setState(() {});
                  },
                  padding: EdgeInsets.only(right: 7)),
              MethodType(
                  selected: selected,
                  deger: 3,
                  imagePath: "Photo Video",
                  onTab: (imagePath) {
                    selected = 3;
                    setState(() {});
                  },
                  padding: EdgeInsets.zero),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: OutlinedButton(
              onPressed: () {
                selected != 0 ? widget.incrade() : null;
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
              ),
              child: Image.asset(
                  "assets/images/request_page_images/next_button_${selected != 0 ? "" : "NON_"}selectable.png"),
            ),
          ),
        ],
      ),
    );
  }
}
