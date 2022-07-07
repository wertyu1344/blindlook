import 'package:blindlook/models/simulaton_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../widgets/simulation_page_widgets/simulations.dart';

class SimulationScreen extends StatelessWidget {
  SimulationScreen({Key? key}) : super(key: key);
  Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        children: [
          buildSizedBox(h: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 24,
                height: 24,
              ),
              Text(
                "Simulation",
                style: constants.requestTextStyleTitle,
              ),
              Image.asset(
                "assets/images/simulation_page_images/search.png",
                width: 24,
                height: 24,
              )
            ],
          ),
          buildSizedBox(h: 50),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: constants.primaryColor,
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Image.asset(
                    "assets/images/simulation_page_images/sort.png",
                    width: 28,
                    height: 28,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Category",
                  style: TextStyle(
                      color: Color.fromARGB(223, 255, 255, 255), fontSize: 20),
                )
              ],
            ),
          ),
          buildSizedBox(h: 25),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Simulations(
                    simulationsModel: SimulationsModel(
                      title: "Amazon",
                      subtitle: "E-Commerce",
                      icon: Image.asset(
                          "assets/images/simulation_page_images/amazon.png"),
                      products: {
                        "Washing Machine": [
                          "537XYZ",
                          "537XYZ",
                          "537XYZ",
                          "537XYZ",
                          "537XYZ",
                          "537XYZ"
                        ],
                        "Fridge": ["asd", "qwe", "zxc", "dfgfd"],
                        "TVs": [for (var i = 0; i == 15; i++) "537XYZ"],
                        "Iron": [for (var i = 0; i == 15; i++) "537XYZ"],
                        "PC": [for (var i = 0; i == 15; i++) "537XYZ"],
                        "Oven": ["asd", "qwe", "zxc", "dfgfd"],
                        "Washing Machin": [
                          for (var i = 0; i == 15; i++) "537XYZ"
                        ],
                        "Fridg": ["asd", "qwe", "zxc", "dfgfd"],
                        "TV": [for (var i = 0; i == 15; i++) "537XYZ"],
                        "Ironn": [for (var i = 0; i == 15; i++) "537XYZ"],
                        "Washing": [for (var i = 0; i == 15; i++) "537XYZ"]
                      },
                    ),
                    index: index,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  buildSizedBox({double h = 0, double w = 0}) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
