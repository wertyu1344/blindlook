import 'package:flutter/material.dart';

import '../../widgets/home_page_widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  //geçici değer
  bool isLogin = false;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppBarWidget(),
            ListView(),
            Row(
              children: [Column(), Column()],
            )
          ],
        ),
      ),
    );
  }
}
