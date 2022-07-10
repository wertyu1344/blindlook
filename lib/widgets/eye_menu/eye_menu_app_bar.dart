import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../controller/controller.dart';

class EyeMenuAppBar extends StatelessWidget {
  const EyeMenuAppBar({
    Key? key,
    required this.controller,
    required this.size,
    required this.constants,
  }) : super(key: key);

  final LoginClass controller;
  final Size size;
  final Constants constants;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            controller.eyeMenuPageIndex.value = 2;
          },
          icon: Image.asset(
            "assets/images/request_page_images/back.png",
            height: size.height / 22,
            width: size.width / 8,
          ),
        ),
        Text(
          "EyeMenu",
          style: constants.requestTextStyleTitle,
        ),
        Image.asset(
          "assets/images/eye_menu/edit.png",
          height: size.height / 22,
          width: size.width / 8,
        )
      ],
    );
  }
}
