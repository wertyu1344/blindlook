import 'package:blindlook/widgets/home_page_widgets/center_widgets.dart';
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Expanded(flex: 2, child: AppBarWidget()),
            buildSizedBox(h: 20),
            Expanded(
                flex: 3,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        4,
                        (index) => Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/home_page_images/avatars/avatar-${index + 2}.png",
                                  ),
                                ),
                                buildSizedBox(w: 15)
                              ],
                            )))),
            Expanded(
              flex: 16,
              child: Row(
                children: [
                  Column(children: [
                    CenterWidgets(imagePath: "EyeBrands"),
                    CenterWidgets(imagePath: "BlindLook")
                  ]),
                  Column(
                    children: [
                      CenterWidgets(imagePath: "Request"),
                      CenterWidgets(imagePath: "News"),
                      CenterWidgets(imagePath: "SignUp"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildSizedBox({double h = 0, double w = 0}) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}
