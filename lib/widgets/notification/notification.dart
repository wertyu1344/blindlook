import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({Key? key, required this.context}) : super(key: key);
  final Constants constants = Constants();
  final BuildContext context;
  final String detailText =
      """Migros has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!

We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.

Thank you Migros for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger!""";
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(
      () => Material(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: constants.pagePadding,
            decoration: BoxDecoration(
                color: constants.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            height: size.height / 1.3,
            width: size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Visibility(
                        visible: controller.isClickedNotification.value,
                        child: InkWell(
                          onTap: () {
                            controller.isClickedNotification.value = false;
                          },
                          child: Image.asset(
                            "assets/images/notification/arrow-square-left.png",
                            height: 30,
                          ),
                        ),
                      ),
                      Visibility(
                          visible:
                              controller.isClickedNotification.value == false,
                          child: const SizedBox(
                            width: 30,
                            height: 30,
                          )),
                      Text(
                        "Notifications",
                        style: constants.requestTextStyleTitleWhite,
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Image.asset(
                            "assets/images/home_page_images/close.png",
                            height: 24),
                      ),
                    ]),
                const SizedBox(
                  height: 40,
                ),
                controller.isClickedNotification.value == false
                    ? controller.isNotification.value == false
                        ? noNotification()
                        : notification()
                    : notificationDetail(controller.notificationText.value,
                        controller.notificationDetail.value)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded noNotification() {
    return const Expanded(
      child: Center(
        child: Text(
          "No notifications yet",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
        ),
      ),
    );
  }

  Expanded notification() {
    return Expanded(
      child: ListView(
        children: [
          days("Today"),
          oneNotification("Notification Example1", detailText),
          oneNotification("Notification Example2", detailText),
          oneNotification("Notification Example3", detailText),
          days("Yesterday"),
          oneNotification("Notification Example4", detailText),
          days("Last Week"),
          oneNotification("Notification Example5", detailText),
          oneNotification("Notification Example6", detailText),
        ],
      ),
    );
  }

  Padding days(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 29.0, top: 20),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }

  Padding oneNotification(String text, String detail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: () {
          controller.isClickedNotification.value = true;
          controller.notificationText.value = text;
          controller.notificationDetail.value = detailText;
        },
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.5),
                  borderRadius: BorderRadius.circular(12)),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  "JUN 10, 2022",
                  style: TextStyle(
                      fontSize: 13, color: Colors.white.withOpacity(0.5)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget notificationDetail(String text, String detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),
        ),
        const SizedBox(height: 29),
        Text(
          detail,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
