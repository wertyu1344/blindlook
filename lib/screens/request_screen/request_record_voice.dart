import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';

class RequestRecordVoice extends StatefulWidget {
  final Function incrade;
  final Function downgrade;

  const RequestRecordVoice(
      {Key? key, required this.incrade, required this.downgrade})
      : super(key: key);

  @override
  State<RequestRecordVoice> createState() => _RequestRecordVoiceState();
}

class _RequestRecordVoiceState extends State<RequestRecordVoice> {
  final Constants constants = Constants();
  late DateTime? start;
  late DateTime end;
  late DateTime totalTime;
  List photos = ["start_voice", "save", "recorder"];

  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: constants.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  widget.downgrade();
                },
                icon: Image.asset(
                  "assets/images/request_page_images/back.png",
                  height: size.height / 22,
                  width: size.width / 8,
                ),
              ),
              Text(
                "Request",
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
            "Upload or record your voice",
            style: constants.requestTextStyleMedium,
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              if (sayac == 0) {
                start = DateTime.now();
                sayac++;
                setState(() {});
              } else if (sayac == 1) {
                end = DateTime.now();
                sayac++;
                print(end.second - start!.second);
                setState(() {});
              } else {
                sayac = 0;

                setState(() {});
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                "assets/images/request_page_images/${photos[sayac % 3]}.png",
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                      ),
                      child: Image.asset(
                          "assets/images/request_page_images/upload.png",
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 26,
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {
                        widget.incrade();
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                      ),
                      child: Image.asset(
                          "assets/images/request_page_images/next_button_selectable_small.png",
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
