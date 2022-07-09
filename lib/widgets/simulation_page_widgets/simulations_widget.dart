import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../models/simulaton_model.dart';
import '../../screens/simulation_screen/simulation_voice_screen.dart';

class SimulationsWidget extends StatelessWidget {
  final SimulationsModel simulationsModel;

  final String productName;
  final String version;
  const SimulationsWidget({
    Key? key,
    required this.constants,
    required this.productName,
    required this.version,
    required this.simulationsModel,
  }) : super(key: key);

  final Constants constants;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => SimulationVoicePage(
              simulationsModel: simulationsModel,
              productName: productName,
              version: version,
            ));
      },
      title: Text(
        "Simulation One",
        style: constants.requestTextStyleMedium,
      ),
      subtitle: Text(
        "4:27",
        style: TextStyle(color: constants.primaryColor.withOpacity(0.6)),
      ),
      leading: Container(
        padding: const EdgeInsets.all(10),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(242, 242, 242, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Image.asset(
          "assets/images/simulation_page_images/play.png",
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
