import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controller/controller.dart';

class EyeMenuEdit extends StatelessWidget {
  EyeMenuEdit({Key? key}) : super(key: key);
  final Constants constants = Get.find();
  final LoginClass controller = Get.find();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: ListView(
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
                style: constants.requestTextStyleTitle.copyWith(fontSize: 22),
              ),
              IconButton(
                onPressed: () => controller.eyeMenuPageIndex.value = 7,
                icon: Image.asset(
                  "assets/images/eye_menu/edit.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
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
            height: 40,
          ),
          const Text(
            "Bu Mekanda Neler Değişti?",
            style: TextStyle(
                color: Color.fromRGBO(164, 164, 164, 1), fontSize: 19),
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: textEditingController,
            minLines: 8,
            maxLines: 14,
            style: TextStyle(color: constants.primaryColor),
            cursorColor: Colors.white54,
            decoration: InputDecoration(
              hintText: "Mesajınız...",
              hintStyle: TextStyle(
                  color: constants.primaryColor.withOpacity(0.6),
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  color: constants.primaryColor,
                  style: BorderStyle.solid,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  color: constants.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: constants.primaryColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: constants.primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          InkWell(
              onTap: () {},
              child: Image.asset("assets/images/eye_menu/Gönder.png"))
        ],
      ),
    );
  }
}
