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
            ? EdgeInsets.only(right: 4.0)
            : content == "Pause"
                ? EdgeInsets.symmetric(horizontal: 4.0)
                : EdgeInsets.only(left: 4),
        child: InkWell(
          onTap: () => callBack(content),
          child: Container(
            alignment: Alignment.center,
            child: Text(content,
                style: TextStyle(
                    fontFamily: "Cera",
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w200)),
            decoration: BoxDecoration(
                color: constants.primaryColor,
                borderRadius: content == "Play"
                    ? BorderRadius.only(topLeft: Radius.circular(16))
                    : content == "Pause"
                        ? null
                        : BorderRadius.only(topRight: Radius.circular(16))),
            height: 60,
          ),
        ),
      ),
    );
  }
}
