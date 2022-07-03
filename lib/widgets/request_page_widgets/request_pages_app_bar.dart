import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class RequestAppBar extends StatelessWidget {
  RequestAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: size.height / 22,
          width: size.width / 8,
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
    );
  }
}
