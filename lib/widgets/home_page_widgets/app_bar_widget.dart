import 'package:flutter/cupertino.dart';

class AppBarWidget extends StatelessWidget {
  final bool isLogin;
  const AppBarWidget({Key? key, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/home_page_images/glasses.png",
          height: size.height / 16,
          width: size.width / 8,
        ),
        Image.asset(
          isLogin
              ? "assets/images/home_page_images/notification.png"
              : "assets/images/home_page_images/send.png",
          height: size.height / 22,
          width: size.width / 8,
        ),
      ],
    );
  }
}
