import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../../widgets/bot_nav_bar/bot_nav_bar.dart';

class EyeBrandsDetail extends StatelessWidget {
  EyeBrandsDetail({Key? key}) : super(key: key);
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BotNavBar(),
          body: ListView(
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      "assets/images/request_page_images/back.png",
                      height: size.height / 22,
                      width: size.width / 8,
                    ),
                  ),
                  Text(
                    "Amazon",
                    style: constants.requestTextStyleTitle,
                  ),
                  Image.asset(
                    "assets/images/home_page_images/send.png",
                    height: size.height / 22,
                    width: size.width / 8,
                  ),
                ],
              ),
              const SizedBox(height: 152),
              Image.asset(
                "assets/images/eye_brands/a.png",
                height: 64,
              ),
              const SizedBox(height: 138),
              const Padding(
                padding: EdgeInsets.only(right: 25.0, left: 25),
                child: Text(
                    """Amazon has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!

              We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.

              Thank you Amazon for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger!"""),
              )
            ],
          )),
    );
  }
}
