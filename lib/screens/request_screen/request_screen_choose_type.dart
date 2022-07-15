import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../controller/controller.dart';
import '../../widgets/request_page_widgets/request_pages_app_bar.dart';
import '../../widgets/request_page_widgets/request_type_widgets.dart';

class RequestPageChooseRequest extends StatelessWidget {
  final Function incradeIndex;
  RequestPageChooseRequest({
    required this.incradeIndex,
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  Constants constants = Get.find<Constants>();

  final LoginClass controller = Get.put(LoginClass());
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          RequestAppBar(size: size),
          const SizedBox(
            height: 20,
          ),
          Text("Choose your request type",
              style: constants.requestTextStyleMedium),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RequestWidgets(
                  onTab: (imagePath) {
                    controller.requestType = imagePath;
                    incradeIndex();
                  },
                  imagePath: "Request",
                  padding: const EdgeInsets.only(right: 5)),
              RequestWidgets(
                  onTab: (imagePath) {
                    controller.requestType = imagePath;

                    incradeIndex();
                  },
                  imagePath: "Feedback",
                  padding: const EdgeInsets.only(right: 5)),
              RequestWidgets(
                  onTab: (imagePath) {
                    controller.requestType = imagePath;

                    incradeIndex();
                  },
                  imagePath: "Complaint",
                  padding: EdgeInsets.zero),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Past Request",
            style: constants.requestTextStyleMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: itemCount == 0
                ? Center(
                    child: Text(
                      "No request yet",
                      style: constants.requestTextStyleTitle,
                    ),
                  )
                : ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: itemCount,
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
                              style: constants.requestTextStyleMedium,
                            ),
                            subtitle: Text(
                              "JUN 10, 2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: constants.primaryColor),
                            ),
                          ));
                    },
                  ),
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
