import 'package:flutter/material.dart';

class StoreModel {
  String baslik;
  String altBaslik;
  String sponsor;
  String acilisKapanis;
  String yakinUlasimNoktalari;
  String mekanaGiris;
  String mekanKatSayisi;
  String asansor;
  String tuvalet;
  String aboutUs;
  Map<String, Map<String, double>> urunler;
  Widget icon;
  StoreModel({
    required this.baslik,
    required this.aboutUs,
    required this.acilisKapanis,
    required this.altBaslik,
    required this.asansor,
    required this.icon,
    required this.mekanKatSayisi,
    required this.mekanaGiris,
    required this.sponsor,
    required this.tuvalet,
    required this.urunler,
    required this.yakinUlasimNoktalari,
  });
}
