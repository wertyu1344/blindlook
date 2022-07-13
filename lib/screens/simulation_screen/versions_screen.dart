import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VersionsPage extends StatelessWidget {
  final Function goNext;
  final Function goBack;

  VersionsPage({
    Key? key,
    required this.goNext,
    required this.goBack,
  }) : super(key: key);

  final Constants constants = Get.find<Constants>();
  final LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
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
                  goBack();
                },
                icon: Image.asset(
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
                "assets/images/simulation_page_images/search.png",
                height: size.height / 22,
                width: size.width / 8,
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Products/${controller.selectedProduct}",
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontFamily: "Cera",
                color: Color.fromRGBO(164, 164, 164, 1),
                fontSize: 21),
          ),
          const SizedBox(height: 10),
          controller.versions == null
              ? const Center(
                  child: Text("No Data"),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.versions.length,
                      itemBuilder: (context, index) => Versions(
                        index: index,
                        goNext: () {
                          goNext();
                        },
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class Versions extends StatelessWidget {
  final int index;
  final Function goNext;
  Versions({
    Key? key,
    required this.goNext,
    required this.index,
  }) : super(key: key);
  final Constants constants = Get.find();
  final LoginClass controller = Get.find();

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
            controller.selectedVersion = controller.versions[index];
            goNext();
          },
          child: Text(
            controller.versions[index],
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
        ));
  }
}
