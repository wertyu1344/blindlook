import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterSimPage extends StatelessWidget {
  final String title;
  final int index;
  FilterSimPage({
    Key? key,
    required this.size,
    required this.title,
    required this.index,
  }) : super(key: key);

  final Size size;
  final LoginClass controller = Get.put(LoginClass());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 20,
      width: size.width / 3,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(200, 100, 64, 115),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Color.fromARGB(223, 255, 255, 255), fontSize: 20),
        ),
      ),
    );
  }
}
