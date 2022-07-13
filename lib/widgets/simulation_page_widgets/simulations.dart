import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Simulations extends StatelessWidget {
  final int index;
  final Function callBack;
  Simulations({
    Key? key,
    required this.index,
    required this.callBack,
  }) : super(key: key);
  final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        callBack();
      },
      child: ListTile(
        leading: Container(
          width: size.width / 7,
          height: size.width / 7,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          child: Center(
            child: SizedBox(
              width: 26,
              height: 26,
              child: Image.asset(
                  "assets/images/simulation_page_images/amazon.png"),
            ),
          ),
        ),
        title: Text(
          "Amazon",
          style: constants.requestTextStyleMedium,
        ),
        subtitle: Text(
          "E-Commerce",
          style: TextStyle(
              fontWeight: FontWeight.w400, color: constants.primaryColor),
        ),
      ),
    );
  }
}
