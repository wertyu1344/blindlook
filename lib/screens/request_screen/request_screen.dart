import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/widgets/register_page_widgets/requst_type_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);
  final LoginClass controller = Get.put(LoginClass());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height / 22,
                width: size.width / 8,
              ),
              Text(
                "Request",
                style: controller.requestTextStyle,
              ),
              Image.asset(
                "assets/images/request_page_images/message-question.png",
                height: size.height / 22,
                width: size.width / 8,
              )
            ],
          ),
          Text("Choose your request type"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RequestWidgets(
                  imagePath: "Request", padding: EdgeInsets.only(right: 5)),
              RequestWidgets(
                  imagePath: "Feedback", padding: EdgeInsets.only(right: 5)),
              RequestWidgets(imagePath: "Complaint", padding: EdgeInsets.zero),
            ],
          ),
          Text("Past Request"),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
