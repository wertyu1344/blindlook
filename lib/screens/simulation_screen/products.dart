import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/models/simulaton_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'versions_screen.dart';

class ProductPage extends StatelessWidget {
  final SimulationsModel simulationsModel;

  ProductPage({Key? key, required this.simulationsModel}) : super(key: key);

  final Constants constants = Get.find<Constants>();

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
              const Text(
                "Products",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Cera",
                    color: Color.fromRGBO(164, 164, 164, 1),
                    fontSize: 21),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: simulationsModel.products!.length,
                    itemBuilder: (context, index) => Products(
                      constants: constants,
                      simulationsModel: simulationsModel,
                      mapKey: simulationsModel.products!.keys.toList()[index],
                    ),
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

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.constants,
    required this.simulationsModel,
    required this.mapKey,
  }) : super(key: key);
  final String mapKey;
  final Constants constants;
  final SimulationsModel simulationsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: constants.primaryColor,
            alignment: Alignment.centerLeft,
          ),
          onPressed: () {
            Get.to(VersionsPage(
              simulationsModel: simulationsModel,
              versions: simulationsModel.products![mapKey],
              productName: mapKey,
            ));
          },
          child: Text(
            mapKey,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
        ));
  }
}
