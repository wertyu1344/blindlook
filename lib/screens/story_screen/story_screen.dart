import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              // ignore: unnecessary_const
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/story/story.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, right: 20),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.x,
                  color: Colors.white,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Container(
                width: 290,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
