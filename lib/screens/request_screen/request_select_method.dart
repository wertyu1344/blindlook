import 'package:flutter/material.dart';

import '../../widgets/register_page_widgets/register_pages_app_bar.dart';

class RequestSelectMethod extends StatelessWidget {
  const RequestSelectMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          RequestAppBar(size: size),
        ],
      ),
    );
  }
}
