import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SimulationScreen extends StatelessWidget {
  SimulationScreen({Key? key}) : super(key: key);
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
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
                "assets/images/simualtion_page_images/search.png",
                width: 24,
                height: 24,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(color: constants.primaryColor),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    "assets/images/simulation_page_images/sort.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 50,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(),
              itemCount: 15,
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
