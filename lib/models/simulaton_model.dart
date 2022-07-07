import 'package:flutter/material.dart';

class SimulationsModel {
  String title;
  String subtitle;
  Widget icon;
  Map<String, List<String>?>? products;
  SimulationsModel(
      {required this.icon,
      required this.products,
      required this.subtitle,
      required this.title});
}
