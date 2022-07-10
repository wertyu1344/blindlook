import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controller/controller.dart';
import '../../widgets/eye_menu/eye_menu_app_bar.dart';

class EyeMenuProducts extends StatelessWidget {
  EyeMenuProducts({Key? key}) : super(key: key);
  Constants constants = Get.find();
  LoginClass controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    products();
    return Container(
      padding: constants.pagePadding,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  controller.eyeMenuPageIndex.value = 2;
                },
                icon: Image.asset(
                  "assets/images/request_page_images/back.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              ),
              Text(
                "EyeMenu",
                style: constants.requestTextStyleTitle,
              ),
              Image.asset(
                "assets/images/eye_menu/edit.png",
                height: size.height / 22,
                width: size.width / 8,
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            controller.selectedStore.baslik,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            controller.selectedStore.altBaslik,
            style: TextStyle(
              color: constants.primaryColor.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...products()
        ],
      ),
    );
  }

  products() {
    var a = [];
    controller.selectedStore.urunler.forEach(
      (key, value) {
        a.add(
          ExpansionListTiles(
            title: key,
            product: value.keys.toList(),
            price: value.values.toList(),
          ),
        );
      },
    );
    return a;
  }
}

class ExpansionListTiles extends StatelessWidget {
  final String title;
  final List<String>? product;
  final List<double?>? price;

  ExpansionListTiles({
    Key? key,
    required this.title,
    required this.product,
    required this.price,
  }) : super(key: key);

  final LoginClass controller = Get.find();
  final Constants constants = Get.find();
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        childrenPadding: const EdgeInsets.only(left: 14),
        collapsedTextColor: constants.primaryColor,
        collapsedIconColor: constants.primaryColor,
        iconColor: constants.primaryColor,
        textColor: constants.primaryColor,
        title: Text(
          title,
          style: constants.requestTextStyleTitle,
        ),
        children: products());
  }

  List<Widget> products() {
    var a = <Widget>[];
    if (product != null) {
      for (var i = 0; i < product!.length; i++) {
        a.add(Padding(
          padding: EdgeInsets.all(8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(product![i]), Text("${price![i]}TL")]),
        ));
      }
    } else {
      return [];
    }
    return a;
  }
}
