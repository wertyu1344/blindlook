import 'package:blindlook/controller/controller.dart';
import 'package:blindlook/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../widgets/eye_menu/store.dart';

class EyeMenu1 extends StatelessWidget {
  EyeMenu1({Key? key}) : super(key: key);
  final Constants constants = Get.find<Constants>();
  final LoginClass controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        children: [
          buildSizedBox(h: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => controller.eyeMenuPageIndex--,
                child: Image.asset(
                  "assets/images/request_page_images/back.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              ),
              Text(
                "EyeMenu",
                style: constants.requestTextStyleTitle.copyWith(fontSize: 22),
              ),
              SizedBox(
                width: size.width / 8,
                height: size.height / 22,
              )
            ],
          ),
          buildSizedBox(h: 50),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: constants.primaryColor,
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Image.asset(
                    "assets/images/simulation_page_images/sort.png",
                    width: 28,
                    height: 28,
                  ),
                ),
                const Text(
                  "Category",
                  style: TextStyle(
                      color: Color.fromARGB(223, 255, 255, 255), fontSize: 20),
                ),
                const Text(
                  "Location",
                  style: TextStyle(
                      color: Color.fromARGB(223, 255, 255, 255), fontSize: 20),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          buildSizedBox(h: 25),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Store(
                    index: index,
                    storeModel: StoreModel(
                      baslik: "Bigchefs Ni??anta????",
                      altBaslik: "??i??li / ??stanbul",
                      asansor: "8 ",
                      mekanKatSayisi: "12",
                      mekanaGiris: """Mekan giri?? kap??s?? kap?? daima a????kt??r.

Mekan??n giri??inde basamak bulunmamaktad??r.

Mekan??n giri?? kap??s??n??n eni 200cm??? dir.

Mekan giri??inde engelliler i??in rampa bulunmamaktad??r.""",
                      tuvalet: "4",
                      yakinUlasimNoktalari: "Lorem Ipsum",
                      urunler: {
                        "??orba": {
                          "FIRINLANMI?? DOMATES ??ORBASI": 19.50,
                          "MERC??MEK ??ORBASI": 15.50,
                        },
                        "KAHVALTI": {
                          "VAN KAHVALTISI": 35.00,
                          "SERPME": 25,
                        },
                        "YUMURTA": {}
                      },
                      sponsor:
                          "Bu mekan Coca-Cola sponsorlu??unda\nG??rme Engelsiz Mekan olmu??ur.",
                      icon: Image.asset("assets/images/eye_menu/big_chefs.png"),
                      acilisKapanis: "8.30, 12.40",
                      aboutUs: """
  Amazon has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!
  
  We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.
  
  Thank you Amazon for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger! """,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  buildSizedBox({double h = 0, double w = 0}) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
