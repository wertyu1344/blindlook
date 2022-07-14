import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../controller/controller.dart';
import '../../widgets/eye_brands_widgets/eye_brands_search_widget.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  Constants constants = Get.find<Constants>();
  var controller = Get.put(Controller());
  var controllerLogin = Get.put(LoginClass());
  var list = [false, true];
  var indexCountry = -1;
  var indexLanguage = -1;
  var isNext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 63),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) =>
                        EyeBrandsSearchWidget(context: context)),
                icon: Container(
                  child: Image.asset(
                    "assets/images/simulation_page_images/search.png",
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(width: 27.25),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controllerLogin.selectCountryIndex.value == 0
                      ? "Choose\nYour Location"
                      : "Choose\nYour Language",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(48, 0, 68, 1)),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  style: TextStyle(color: constants.primaryColor),
                  cursorColor: Colors.white54,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.25),
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                    errorBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.25),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1.4,
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.25),
                        style: BorderStyle.solid,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.25),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.25),
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 74),
              ],
            ),
          ),
          controllerLogin.selectCountryIndex.value == 0
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, indexx) {
                        return pickCountryWidget(
                            "+90", "assets/icons/poland.png", "Poland", indexx);
                      },
                    ),
                  ),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, indexx) {
                        return pickLanguageWidget("English", indexx);
                      },
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Opacity(
              opacity: isNext == true ? 1 : 0.5,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(48, 0, 68, 1),
                    borderRadius: BorderRadius.circular(6)),
                width: 290,
                height: 50,
                child: InkWell(
                  onTap: () {
                    isNext ? controllerLogin.selectCountryIndex++ : null;
                    print(controllerLogin.selectCountryIndex);
                    setState(() {});
                    isNext = false;
                    controllerLogin.selectCountryIndex.value == 2
                        ? controllerLogin.isFirstTime.value = false
                        : null;
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/sign_up/button_shape.png"),
                      const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget pickCountryWidget(
    String countryCode,
    String flagImage,
    String countryName,
    int selectedIndex,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          isNext = true;
          indexCountry = selectedIndex;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: selectedIndex != indexCountry
                      ? DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                          image: AssetImage(
                            flagImage,
                          ),
                        )
                      : DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(1), BlendMode.dstATop),
                          image: AssetImage(
                            flagImage,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  countryName,
                  style: TextStyle(
                      color: selectedIndex == indexCountry
                          ? const Color.fromRGBO(48, 0, 68, 1)
                          : const Color.fromRGBO(48, 0, 68, 1)
                              .withOpacity(0.5)),
                ),
                Text(countryCode, style: const TextStyle()),
              ],
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: selectedIndex == indexCountry
                          ? const Color.fromRGBO(48, 0, 68, 1)
                          : Colors.grey.withOpacity(0.1)),
                ),
                Visibility(
                  visible: selectedIndex == indexCountry,
                  child: const Icon(
                    Icons.check,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget pickLanguageWidget(
    String languageName,
    int selectedIndex,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          isNext = true;

          indexLanguage = selectedIndex;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          children: [
            Text(
              languageName,
              style: TextStyle(
                  fontSize: 17,
                  color: indexLanguage == selectedIndex
                      ? Color.fromRGBO(48, 0, 68, 1)
                      : Color.fromRGBO(48, 0, 68, 1).withOpacity(0.5)),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: selectedIndex == indexLanguage
                          ? const Color.fromRGBO(48, 0, 68, 1)
                          : Colors.grey.withOpacity(0.1)),
                ),
                Visibility(
                  visible: selectedIndex == indexLanguage,
                  child: const Icon(
                    Icons.check,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
