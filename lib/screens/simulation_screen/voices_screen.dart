import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/simulation_page_widgets/simulations_widget.dart';

class VoicesPage extends StatelessWidget {
  final Function goNext;
  final Function goBack;

  VoicesPage({
    Key? key,
    required this.goNext,
    required this.goBack,
  }) : super(key: key);

  final Constants constants = Get.find<Constants>();
  final LoginClass controller = Get.find();

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
                      goBack();
                    },
                    icon: Image.asset(
                      "assets/images/request_page_images/back.png",
                      height: size.height / 22,
                      width: size.width / 8,
                    ),
                  ),
                  Text(
                    "",
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
                "${controller.selectedProduct}/${controller.selectedVersion}",
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: "Cera",
                    color: Color.fromRGBO(164, 164, 164, 1),
                    fontSize: 21),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (context, index) => SimulationsWidget(
                      goNext: () {
                        goNext();
                      },
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
