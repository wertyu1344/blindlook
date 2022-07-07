import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/request_page_widgets/play_pause_review.dart';

class SimulationVoicePage extends StatefulWidget {
  final String 
  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  const SimulationVoicePage({
    Key? key,
  }) : super(key: key);

  @override
  State<SimulationVoicePage> createState() => _SimulationVoicePageState();
}

class _SimulationVoicePageState extends State<SimulationVoicePage> {
  Constants constants = Get.put(Constants());

  late DateTime? start;
  late DateTime end;
  late Duration totalTime;
  List photos = ["start_voice", "save", "recorder"];

  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: constants.pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/request_page_images/back.png",
                    height: size.height / 22,
                    width: size.width / 8,
                  ),
                ),
                Text(
                  " ",
                  style: constants.requestTextStyleTitle,
                ),
                Image.asset(
                  "assets/images/request_page_images/message-question.png",
                  height: size.height / 22,
                  width: size.width / 8,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "$productName/$version",
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontFamily: "Cera",
                  color: Color.fromRGBO(164, 164, 164, 1),
                  fontSize: 24),
            ),
            const SizedBox(
              height: 40,
            ),
            sayac == 2
                ? Column(
                    children: [
                      Row(
                        children: [
                          PlayPauseReview(
                              content: "Play", callBack: (content) {}),
                          PlayPauseReview(
                              content: "Pause", callBack: (content) {}),
                          PlayPauseReview(
                              content: "Rewind",
                              callBack: (content) {
                                sayac = 0;
                                setState(() {});
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  )
                : const SizedBox(),
            InkWell(
              onTap: () {
                if (sayac == 0) {
                  start = DateTime.now();
                  sayac++;
                  setState(() {});
                } else if (sayac == 1) {
                  end = DateTime.now();
                  totalTime = end.difference(start!);
                  sayac++;
                  setState(() {});
                } else {
                  null;
                }
              },
              child: ClipRRect(
                borderRadius: sayac != 2
                    ? BorderRadius.circular(16.0)
                    : const BorderRadius.vertical(bottom: Radius.circular(16)),
                child: sayac != 2
                    ? Image.asset(
                        "assets/images/request_page_images/${photos[sayac]}.png",
                        width: size.width,
                      )
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/request_page_images/${photos[sayac]}.png",
                          ),
                          Center(
                            child: Text(
                              widget._printDuration(totalTime),
                              style: const TextStyle(
                                  fontFamily: "Cera",
                                  fontSize: 65,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Expanded(
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
