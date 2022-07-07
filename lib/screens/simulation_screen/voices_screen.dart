import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/models/simulaton_model.dart';
import 'package:blindlook/screens/simulation_screen/simulation_voice_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoicesPage extends StatelessWidget {
  VoicesPage(
      {Key? key,
      required this.simulationsModel,
      required this.productName,
      required this.version})
      : super(key: key);

  final Constants constants = Get.find<Constants>();
  final SimulationsModel simulationsModel;
  final String productName;
  final String version;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: constants.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset(
                      "assets/images/request_page_images/back.png",
                      height: size.height / 22,
                      width: size.width / 8,
                    ),
                  ),
                  Text(
                    simulationsModel.title,
                    style: constants.requestTextStyleTitle,
                  ),
                  Image.asset(
                    "assets/images/simulation_page_images/search.png",
                    height: size.height / 22,
                    width: size.width / 8,
                  )
                ],
              ),
              const SizedBox(height: 40),
              Text(
                "$productName/$version",
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: "Cera",
                    color: Color.fromRGBO(164, 164, 164, 1),
                    fontSize: 24),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (context, index) =>
                        SimulationsWidget(constants: constants),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
