import 'package:flutter/material.dart';

class CenterWidgets extends StatelessWidget {
  final String imagePath;

  const CenterWidgets({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Color.fromRGBO(48, 0, 68, 1),
        child: Column(
          children: [
            Image.asset(
              "assets/images/home_page_images/content/$imagePath.png",
              width: size.width / 5,
            ),
            Text(imagePath)
          ],
        ));
  }
}
