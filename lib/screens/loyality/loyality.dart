import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoyalityScreen extends StatelessWidget {
  LoyalityScreen({Key? key}) : super(key: key);
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var list = [
      mainPage(),
      conditionsPage(),
      joinPage(),
      pastWinners(),
      winnerDetail(controller.priceName.value)
    ];

    return Obx(
      () => Scaffold(
        body: list.elementAt(controller.loyalityPageIndex.value),
      ),
    );
  }

  Column mainPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            const Text(
              "Loyality",
              style:
                  TextStyle(color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
            ),
            Image.asset(
              "assets/images/loyality/message-question.png",
              height: 24,
            ),
          ],
        ),
        const SizedBox(height: 63),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "This Month's Gift",
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 17),
              ),
              const SizedBox(height: 29),
              const SizedBox(height: 51),
              InkWell(
                onTap: () => controller.loyalityPageIndex.value = 1,
                child: Image.asset(
                  "assets/images/loyality/join.png",
                ),
              ),
              const SizedBox(height: 11),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          controller.loyalityPageIndex.value = 3;
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromRGBO(48, 0, 68, 1),
                          ),
                          child: const Center(
                            child: Text(
                              "Past Winners",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          controller.loyalityPageIndex.value = 1;
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromRGBO(48, 0, 68, 1),
                          ),
                          child: const Center(
                            child: const Text(
                              "Conditions",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Column conditionsPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => controller.loyalityPageIndex.value = 0,
              child: Image.asset(
                "assets/images/request_page_images/back.png",
                height: 24,
              ),
            ),
            const Text(
              "Conditions",
              style:
                  TextStyle(color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
            ),
            Image.asset(
              "assets/images/loyality/message-question.png",
              height: 24,
            ),
          ],
        ),
        const SizedBox(height: 63),
        Column(
          children: const [
            Text(
              "Here is what you need to do;",
              style:
                  TextStyle(fontSize: 15, color: Color.fromRGBO(48, 0, 68, 1)),
            ),
            Text(
              """
              
            1. Comment on XYZ brand
            
            2. Invite 3 people to BlindLook
            
            3. Share XYZ brand""",
              style:
                  TextStyle(fontSize: 17, color: Color.fromRGBO(48, 0, 68, 1)),
            ),
          ],
        ),
        const Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 150.0),
            child: InkWell(
              onTap: () => controller.loyalityPageIndex.value = 2,
              child: Image.asset(
                "assets/images/loyality/join.png",
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column joinPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => controller.loyalityPageIndex.value = 1,
              child: Image.asset(
                "assets/images/request_page_images/back.png",
                height: 24,
              ),
            ),
            const Text(
              "Join",
              style:
                  TextStyle(color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
            ),
            Image.asset(
              "assets/images/loyality/message-question.png",
              height: 24,
            ),
          ],
        ),
        const SizedBox(height: 44),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset(
                "assets/images/loyality/migrosLarge.png",
                height: 194,
              ),
            ),
            task(isCompleted: true, task: "Comment on XYZ brand"),
            task(isCompleted: false, task: "Invite 3 people to BlindLook"),
            task(isCompleted: false, task: "Share XYZ brand"),
          ],
        ),
      ],
    );
  }

  Widget task({bool isCompleted = false, String task = ""}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: const Color.fromRGBO(48, 0, 68, 1).withOpacity(0.5),
                  ),
                  isCompleted
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.check,
                            size: 12,
                            color: const Color.fromRGBO(48, 0, 68, 1)
                                .withOpacity(0.5),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task,
                  style: TextStyle(
                      fontSize: 17,
                      color: isCompleted
                          ? const Color.fromRGBO(48, 0, 68, 1).withOpacity(0.5)
                          : const Color.fromRGBO(48, 0, 68, 1)),
                ),
                const SizedBox(height: 6),
                isCompleted
                    ? Text(
                        "Completed",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 13,
                            color: const Color.fromRGBO(48, 0, 68, 1)
                                .withOpacity(0.5)),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget pastWinners() {
    return ListView(
      children: [
        const SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => controller.loyalityPageIndex.value = 0,
              child: Image.asset(
                "assets/images/request_page_images/back.png",
                height: 24,
              ),
            ),
            const Text(
              "Past Winners",
              style:
                  TextStyle(color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
            ),
            Image.asset(
              "assets/images/loyality/message-question.png",
              height: 24,
            ),
          ],
        ),
        const SizedBox(
          height: 63,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
              children: List.generate(
                  100,
                  (index) =>
                      priceWidget("MIGROS Odülü$index", "JUN $index, 2022"))),
        )
      ],
    );
  }

  Widget winnerDetail(String priceName) {
    return ListView(
      children: [
        const SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => controller.loyalityPageIndex.value = 3,
              child: Image.asset(
                "assets/images/request_page_images/back.png",
                height: 24,
              ),
            ),
            Text(
              priceName,
              style: const TextStyle(
                  color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
            ),
            Image.asset(
              "assets/images/home_page_images/send.png",
              height: 24,
            ),
          ],
        ),
        const SizedBox(
          height: 63,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Image.asset(
            "assets/images/loyality/migros.png",
            width: 340,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: List.generate(
                30,
                (index) =>
                    winnerWidget("Guven Sislioglu$index", "JUN $index, 2022")),
          ),
        )
      ],
    );
  }

  Widget winnerWidget(String winner, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Image.asset(
                "assets/images/loyality/king.png",
                width: 21.49,
                height: 18.07,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  winner,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(48, 0, 68, 1),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 6),
                Text(
                  date,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      color:
                          const Color.fromRGBO(48, 0, 68, 1).withOpacity(0.5)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget priceWidget(String price, String date) {
    return InkWell(
      onTap: () {
        controller.priceName.value = price;
        controller.loyalityPageIndex.value = 4;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Image.asset(
                  "assets/images/loyality/king.png",
                  width: 21.49,
                  height: 18.07,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(48, 0, 68, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    date,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 13,
                        color: const Color.fromRGBO(48, 0, 68, 1)
                            .withOpacity(0.5)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
