import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Store extends StatelessWidget {
  final int index;
  final StoreModel storeModel;
  Store({Key? key, required this.index, required this.storeModel})
      : super(key: key);
  final Constants constants = Get.find<Constants>();

  final LoginClass controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        controller.eyeMenuPageIndex.value++;
      },
      child: ListTile(
        trailing: Image.asset("assets/images/eye_menu/shop.png",
            width: 22, height: 22),
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
              child: storeModel.icon,
            ))),
        title: Text(
          storeModel.baslik,
          style: constants.requestTextStyleMedium,
        ),
        subtitle: Text(
          storeModel.altBaslik,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: constants.primaryColor),
        ),
      ),
    );
  }
}
