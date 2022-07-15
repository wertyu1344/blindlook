import 'package:flutter/material.dart';

class StoryAvatars extends StatelessWidget {
  final Function onTap;
  final int index;
  const StoryAvatars({
    required this.index,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => onTap(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Hero(
            tag: "assets/images/home_page_images/avatars/avatar-$index.png",
            child: Image.asset(
              "assets/images/home_page_images/avatars/avatar-$index.png",
            ),
          ),
        ),
      ),
    );
  }
}
