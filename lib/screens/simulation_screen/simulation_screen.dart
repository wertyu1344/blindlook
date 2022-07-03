import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SimulationScreen extends StatelessWidget {
  SimulationScreen({Key? key}) : super(key: key);
  final Constants constants = Constants();

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
                    child: ListTile(
                      leading: Container(
                          width: size.width / 7,
                          height: size.width / 7,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(242, 242, 242, 1),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/simulation_page_images/amazon.png",
                              width: 26,
                              height: 26,
                            ),
                          )),
                      title: Text(
                        "Amazon$index",
                        style: constants.requestTextStyleMedium,
                      ),
                      subtitle: Text(
                        "E-Commerce",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: constants.primaryColor),
                      ),
                    ));
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
