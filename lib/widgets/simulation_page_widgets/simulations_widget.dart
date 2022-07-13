import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimulationsWidget extends StatelessWidget {
  final Function goNext;
  SimulationsWidget({
    Key? key,
    required this.goNext,
  }) : super(key: key);
  final LoginClass controller = Get.find();
  final Constants constants = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        goNext();
      },
      title: Text(
        "Simulation One",
        style: constants.requestTextStyleMedium,
      ),
      subtitle: Text(
        "4:27",
        style: TextStyle(color: constants.primaryColor.withOpacity(0.6)),
      ),
      leading: Container(
        padding: const EdgeInsets.all(10),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Image.asset(
          "assets/images/simulation_page_images/play.png",
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
