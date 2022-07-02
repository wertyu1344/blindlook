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
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height / 22,
                width: size.width / 8,
              ),
              Text(
                "Request",
                style: controller.requestTextStyleTitle,
              ),
              Image.asset(
                "assets/images/request_page_images/message-question.png",
                height: size.height / 22,
                width: size.width / 8,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("Choose your request type",
              style: controller.requestTextStyleMedium),
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
          Text(
            "Past Request",
            style: controller.requestTextStyleMedium,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      leading: Container(
                          width: size.width / 7,
                          height: size.width / 7,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(243, 247, 247, 247),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/request_page_images/heart.png",
                              width: 25,
                              height: 25,
                            ),
                          )),
                      title: Text(
                        "Requst Tile $index",
                        style: controller.requestTextStyleMedium,
                      ),
                      subtitle: Text(
                        "JUN 10, 2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(48, 0, 68, 1)),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
