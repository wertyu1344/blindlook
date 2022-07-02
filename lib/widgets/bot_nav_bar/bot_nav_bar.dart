import 'package:flutter/material.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(18),
        topLeft: Radius.circular(18),
      ),
      child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(48, 0, 68, 1),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "aa"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "aa"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "aa"),
          ]),
    );
  }
}
