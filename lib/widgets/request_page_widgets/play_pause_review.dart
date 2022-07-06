import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class PlayPauseReview extends StatelessWidget {
  final String content;
  final Function callBack;
  PlayPauseReview({
    Key? key,
    required this.content,
    required this.callBack,
  }) : super(key: key);
  final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: content == "Play"
            ? const EdgeInsets.only(right: 4.0)
            : content == "Pause"
                ? const EdgeInsets.symmetric(horizontal: 4.0)
                : const EdgeInsets.only(left: 4),
        child: InkWell(
          onTap: () => callBack(content),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: constants.primaryColor,
                borderRadius: content == "Play"
                    ? const BorderRadius.only(topLeft: Radius.circular(16))
                    : content == "Pause"
                        ? null
                        : const BorderRadius.only(
                            topRight: Radius.circular(16))),
            height: 60,
            child: Text(content,
                style: const TextStyle(
                  fontFamily: "Cera",
                  fontSize: 20,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
