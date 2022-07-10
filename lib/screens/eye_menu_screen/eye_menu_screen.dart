import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/all_screens_widget/text_fileds.dart';
import '../../widgets/eye_menu/select_category.dart';

class EyeMenuPage extends StatefulWidget {
  EyeMenuPage({Key? key}) : super(key: key);

  @override
  State<EyeMenuPage> createState() => _EyeMenuPageState();
}

class _EyeMenuPageState extends State<EyeMenuPage> {
  late final textController1;
  late final textController2;
  LoginClass controller = Get.find();

  final Constants constants = Get.find();
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textController1.dispose();
    textController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: constants.pagePadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "EyeMenu",
              textAlign: TextAlign.center,
              style: constants.requestTextStyleTitle.copyWith(fontSize: 19),
            ),
            Stack(alignment: Alignment.center, children: [
              Image.asset(
                "assets/images/eye_menu/v.png",
              ),
              Text(
                "Herkes için\n Erişilebilir Bir Dünya",
                textAlign: TextAlign.center,
                style: constants.requestTextStyleTitle
                    .copyWith(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ]),
            const SizedBox(height: 20),
            TextFeilds(
              constants: constants,
              controller: textController1,
              hint: "Mekan ile ara...",
              onchange: (newText) {
                textController1.text = newText;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFeilds(
              constants: constants,
              controller: textController2,
              hint: "Konum ile ara...",
              onchange: (newText) {
                textController2.text = newText;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SelectCategory(constants: constants),
            const SizedBox(height: 20),
            InkWell(
              onTap: textController1.text == "" && textController1.text == ""
                  ? null
                  : () {
                      controller.eyeMenuPageIndex++;
                    },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                      "assets/images/eye_menu/ara_${textController1.text == "" && textController1.text == "" ? "NON_" : ""}selectable.png")),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "EyeMenu Hakkında",
              textAlign: TextAlign.center,
              style: constants.requestTextStyleTitle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
