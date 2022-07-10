import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/models/simulaton_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/request_page_widgets/play_pause_review.dart';

class SimulationVoicePage extends StatefulWidget {
  final SimulationsModel simulationsModel;
  final String productName;
  final String version;
  int selectedButton = 0;
  Constants constants = Get.put(Constants());

  SimulationVoicePage({
    Key? key,
    required this.productName,
    required this.version,
    required this.simulationsModel,
  }) : super(key: key);

  @override
  State<SimulationVoicePage> createState() => _SimulationVoicePageState();
}

class _SimulationVoicePageState extends State<SimulationVoicePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: widget.constants.pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Image.asset(
                    "assets/images/request_page_images/back.png",
                    height: size.height / 22,
                    width: size.width / 8,
                  ),
                ),
                Text(
                  widget.simulationsModel.title,
                  style: widget.constants.requestTextStyleTitle,
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
              "${widget.productName}/${widget.version}",
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontFamily: "Cera",
                  color: Color.fromRGBO(164, 164, 164, 1),
                  fontSize: 24),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabWidget(
                  selected: widget.selectedButton,
                  buttonValue: 0,
                  title: "Audio Simulation",
                  ontap: (deger) {
                    widget.selectedButton = deger;

                    setState(() {});
                  },
                ),
                TabWidget(
                  selected: widget.selectedButton,
                  buttonValue: 1,
                  title: "Text Simulation",
                  ontap: (deger) {
                    widget.selectedButton = deger;
                    print(widget.selectedButton);

                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            widget.selectedButton == 0
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
                                setState(() {});
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(15)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              "assets/images/request_page_images/recorder.png",
                            ),
                            const Center(
                              child: Text(
                                "04.45",
                                style: TextStyle(
                                    fontFamily: "Cera",
                                    fontSize: 65,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Expanded(
                    child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Text(
                        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis commodo, arcu vitae posuere faucibus, ipsum eros auctor eros, at scelerisque sapien nisl nec nulla. Mauris et tempus est.

                        Curabitur blandit porta facilisis. Maecenas quis magna gravida, fringilla ligula eu, maximus magna. Pellentesque auctor consequat enim vitae mollis.

                        Aliquam pretium vestibulum nibh, sed consequat nisl ullamcorper eu. Sed a orci et turpis sollicitudin scelerisque.

                        Nullam consequat nulla iaculis dolor dapibus, eget tempor ipsum mattis. Ut mollis arcu eget quam pellentesque tempor. Donec eu varius sapien.
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis commodo, arcu vitae posuere faucibus, ipsum eros auctor eros, at scelerisque sapien nisl nec nulla. Mauris et tempus est.

                        Curabitur blandit porta facilisis. Maecenas quis magna gravida, fringilla ligula eu, maximus magna. Pellentesque auctor consequat enim vitae mollis.

                        Aliquam pretium vestibulum nibh, sed consequat nisl ullamcorper eu. Sed a orci et turpis sollicitudin scelerisque.

                        Nullam consequat nulla iaculis dolor dapibus, eget tempor ipsum mattis. Ut mollis arcu eget quam pellentesque tempor. Donec eu varius sapien."""),
                  )),
            const SizedBox(
              height: 40,
            ),
            if (widget.selectedButton == 0) const Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  final String title;
  final int buttonValue;
  final Function ontap;
  final int selected;

  TabWidget(
      {super.key,
      required this.buttonValue,
      required this.ontap,
      required this.title,
      required this.selected});
  final Constants constants = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        ontap(buttonValue);
      },
      child: Column(
        children: [
          Text(
            title,
            style: constants.requestTextStyleTitle.copyWith(fontSize: 18),
          ),
          if (buttonValue == selected)
            Container(
              height: 3,
              width: size.width / 2,
              color: constants.primaryColor,
            )
        ],
      ),
    );
  }
}
