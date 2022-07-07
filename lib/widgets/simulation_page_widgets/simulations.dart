import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/models/simulaton_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/simulation_screen/products.dart';

class Simulations extends StatelessWidget {
  final int index;
  final SimulationsModel simulationsModel;
  Simulations({Key? key, required this.index, required this.simulationsModel})
      : super(key: key);
  final Constants constants = Get.find<Constants>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Get.to(ProductPage(
          simulationsModel: simulationsModel,
        ));
      },
      child: ListTile(
        leading: Container(
            width: size.width / 7,
            height: size.width / 7,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            child: Center(
                child: SizedBox(
              width: 26,
              height: 26,
              child: simulationsModel.icon,
            ))),
        title: Text(
          simulationsModel.title,
          style: constants.requestTextStyleMedium,
        ),
        subtitle: Text(
          simulationsModel.subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: constants.primaryColor),
        ),
      ),
    );
  }
}
