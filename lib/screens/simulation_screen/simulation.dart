import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/screens/simulation_screen/products.dart';
import 'package:blindlook/screens/simulation_screen/simulation_screen_main.dart';
import 'package:blindlook/screens/simulation_screen/simulation_voice_screen.dart';
import 'package:blindlook/screens/simulation_screen/versions_screen.dart';
import 'package:blindlook/screens/simulation_screen/voices_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  State<SimulationPage> createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  final LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: body(),
      ),
    );
  }

  body() {
    switch (controller.simulationPageIndex.value) {
      case 0:
        return SimulationScreen(
          callBack: () {
            controller.simulationPageIndex++;
          },
        );
      case 1:
        return ProductPage(
          goNext: () {
            controller.simulationPageIndex++;
          },
          goBack: () {
            controller.simulationPageIndex--;
          },
        );
      case 2:
        return VersionsPage(
          goNext: () {
            controller.simulationPageIndex++;
          },
          goBack: () {
            controller.simulationPageIndex--;
          },
        );
      case 3:
        return VoicesPage(
          goNext: () {
            controller.simulationPageIndex++;
          },
          goBack: () {
            controller.simulationPageIndex--;
          },
        );
      case 4:
        return SimulationVoicePage(
          goBack: () {
            controller.simulationPageIndex--;
          },
        );
    }
  }
}
