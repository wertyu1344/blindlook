import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';

class RequestTags extends StatelessWidget {
  RequestTags({Key? key}) : super(key: key);
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(246, 241, 241, 241),
        ),
        child: Text(
          "Lorem Ipsum",
          style: TextStyle(fontSize: 20, color: constants.primaryColor),
        ),
      ),
    );
  }
}