import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/models/simulaton_model.dart';
import 'package:blindlook/screens/simulation_screen/voices_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VersionsPage extends StatelessWidget {
  VersionsPage(
      {Key? key,
      required this.simulationsModel,
      required this.versions,
      required this.productName})
      : super(key: key);

  final Constants constants = Get.find<Constants>();
  final SimulationsModel simulationsModel;
  final List? versions;
  final String productName;

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
                "Products/$productName",
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: "Cera",
                    color: Color.fromRGBO(164, 164, 164, 1),
                    fontSize: 21),
              ),
              const SizedBox(height: 10),
              versions == null
                  ? const Center(
                      child: Text("No Data"),
                    )
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: versions!.length,
                          itemBuilder: (context, index) => Versions(
                            version: versions![index],
                            constants: constants,
                            simulationsModel: simulationsModel,
                            productName: productName,
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

class Versions extends StatelessWidget {
  const Versions({
    Key? key,
    required this.constants,
    required this.simulationsModel,
    required this.version,
    required this.productName,
  }) : super(key: key);
  final Constants constants;
  final SimulationsModel simulationsModel;
  final String version;
  final String productName;

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
            Get.to(VoicesPage(
              simulationsModel: simulationsModel,
              version: version,
              productName: productName,
            ));
          },
          child: Text(
            version,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
        ));
  }
}
