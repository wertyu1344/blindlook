import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../widgets/request_page_widgets/request_tags.dart';

class RequestScreenTagYour extends StatelessWidget {
  final Function goBack;
  final Function goNext;
  RequestScreenTagYour({Key? key, required this.goBack, required this.goNext})
      : super(key: key);
  Constants constants = Get.find<Constants>();

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
                  goBack();
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
            height: 40,
          ),
          Text(
            "Tag your request to help us reach\nthe right audience",
            style: constants.requestTextStyleMedium,
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            style: TextStyle(color: constants.primaryColor),
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              hintText: "Lorem ipsum",
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
            height: 60,
          ),
          Expanded(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 80),
                itemBuilder: (x, i) {
                  return RequestTags();
                }),
          ),
          OutlinedButton(
            onPressed: () {
              goNext();
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
            ),
            child: Image.asset("assets/images/request_page_images/send_req.png",
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
