import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryWidget extends StatefulWidget {
  final int length;
  int index;
  StoryWidget({
    Key? key,
    required this.index,
    required this.length,
  }) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        widget.index != widget.length - 1 ? widget.index++ : Get.back();

        setState(() {});
      },
      child: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Hero(
              tag:
                  "assets/images/home_page_images/avatars/avatar-${widget.index}.png",
              child: Image.asset(
                "assets/images/home_page_images/avatars/avatar-${widget.index}.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40),
            child: SizedBox(
              height: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.length,
                itemBuilder: (context, currentindex) => Container(
                  width: ((size.width / widget.length) - 20),
                  decoration: BoxDecoration(
                      color: widget.index == currentindex
                          ? Colors.white
                          : Colors.white70.withOpacity(0.4),
                      borderRadius: currentindex == 0
                          ? const BorderRadius.horizontal(
                              left: Radius.circular(5))
                          : currentindex == widget.length - 1
                              ? const BorderRadius.horizontal(
                                  right: Radius.circular(5))
                              : BorderRadius.circular(
                                  widget.index == currentindex ? 5 : 0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Upcoming Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
                const Text(
                  "Technology\n&Blind",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 35),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/home_page_images/avatars/picture-frame.png",
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Text(
                          " August 18",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        Text(
                          "Zorlu PSM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                  "assets/images/home_page_images/avatars/apply.png"),
            ),
          )
        ],
      ),
    );
  }
}
