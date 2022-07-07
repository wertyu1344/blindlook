import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';

class RequestTellUsAbout extends StatelessWidget {
  final Function goBack;
  final Function goNext;
  RequestTellUsAbout({Key? key, required this.goBack, required this.goNext})
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
            "Tell us about your experiences;",
            style: constants.requestTextStyleMedium,
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            minLines: 16,
            maxLines: 16,
            style: TextStyle(color: constants.primaryColor),
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              hintText: "Tell us about your experiences;",
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
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                      ),
                      child: Image.asset(
                          "assets/images/request_page_images/upload.png",
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 26,
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {
                        goNext();
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                      ),
                      child: Image.asset(
                          "assets/images/request_page_images/next_button_selectable_small.png",
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
