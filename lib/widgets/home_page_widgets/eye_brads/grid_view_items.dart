import 'package:flutter/material.dart';

class GridViewItems extends StatelessWidget {
  final int index;
  const GridViewItems({Key? key, required this.index}) : super(key: key);
  final String imagePath = "assets/images/eye_brands";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white60),
          child: Center(
            child: Image.asset(
              index % 3 == 0
                  ? "$imagePath/Nike.png"
                  : index % 3 == 1
                      ? "$imagePath/amazon.png"
                      : "$imagePath/Migros.png",
              width: 55,
              height: 55,
            ),
          ),
        ));
  }
}
