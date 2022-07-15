import 'package:flutter/material.dart';

import '../../../widgets/home_page_widgets/story_widget.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: StoryWidget(index: index, length: 4)),
    );
  }
}
