import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/screens/settings_screen/password_change/password_change_page.dart';
import 'package:blindlook/widgets/settings_page_widgets/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);
  final Constants constants = Get.find<Constants>();
  final List<String> settings = [
    "Profile",
    "Account Settings",
    "Password Change",
    "E-Mail Change",
    "Socials",
    "Instagram",
    "LinkedIn",
    "YouTube",
    "Twitter",
    "General",
    "Language Settings",
    "Location Settings",
    "Notification Settings",
    "Siri Shortcuts",
    "Feedback",
    "FAQ",
    "Privacy Policy",
    "Share BlindLook App",
    "Rate This App",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: constants.pagePadding,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Settings",
            style: constants.requestTextStyleTitle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 45,
          ),
          ...List.generate(
              settings.length,
              (index) => index == 0 || index == 4 || index == 9
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 35),
                      child: Text(
                        settings[index],
                        style: const TextStyle(
                            fontSize: 21,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    )
                  : SettingsWidget(
                      onTapCallBack: () {
                        index == 2
                            ? Get.to(
                                PasswordChange(),
                              )
                            : null;
                      },
                      imagePath: settings[index]))
        ],
      ),
    );
  }
}
