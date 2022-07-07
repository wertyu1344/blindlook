import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../screens/simulation_screen/simulation_voice_screen.dart';

class SimulationsWidget extends StatelessWidget {
  const SimulationsWidget({
    Key? key,
    required this.constants,
  }) : super(key: key);

  final Constants constants;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => SimulationVoicePage());
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
        padding: EdgeInsets.all(10),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
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
