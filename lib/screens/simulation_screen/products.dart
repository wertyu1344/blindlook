import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  final Function goNext;
  final Function goBack;

  ProductPage({
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
                itemCount: controller.products.length,
                itemBuilder: (context, index) => Products(
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

class Products extends StatelessWidget {
  final Function goNext;
  final int index;
  Products({
    Key? key,
    required this.goNext,
    required this.index,
  }) : super(key: key);
  final LoginClass controller = Get.find();
  final Constants constants = Get.find();

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
            controller.selectedProduct = controller.products[index];
            goNext();
          },
          child: Text(
            controller.products[index],
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
        ));
  }
}
