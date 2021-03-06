import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/country_code.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  var controller = Get.put(Controller());
  var textFormControllerName = TextEditingController();
  var textFormControllerMail = TextEditingController();
  var controllerLogin = Get.put(LoginClass());
  Widget build(BuildContext context) {
    List<Widget> list = [
      mainPage(context),
      numberSection(),
      phoneVerify(context),
      nameSection(),
      mailSection(context),
      uploadPhotoSection(),
      lastPage()
    ];

    return Obx(() =>
        Scaffold(body: list.elementAt(controllerLogin.signupPageIndex.value)));
  }

  Scaffold lastPage() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(flex: 10, child: SizedBox()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/sign_up/scan.png",
                    height: 48,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Your request successfully sent.\nWe’ll get back to you soon.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(48, 0, 68, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Container(
                width: 290,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(48, 0, 68, 1),
                    borderRadius: BorderRadius.circular(6)),
                child: InkWell(
                  onTap: () {
                    controller.pageIndex.value = 0;
                    controllerLogin.signupPageIndex.value = 0;
                    Get.back();
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/sign_up/button_shape.png"),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Back to home",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Scaffold uploadPhotoSection() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        InkWell(
          child: Image.asset(
            "assets/icons/message-question.png",
            width: 24,
          ),
        ),
        const SizedBox(width: 25),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Upload your\nDisability Document",
              style: TextStyle(
                  color: Color.fromRGBO(48, 0, 68, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 53.15),
            Container(
              width: 340,
              height: 350,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(48, 0, 68, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/sign_up/ellipse.png",
                        height: 96,
                      ),
                      Image.asset(
                        "assets/images/sign_up/play-cricle.png",
                        height: 96,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Upload your document",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(height: 49),
            Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(48, 0, 68, 1),
                  borderRadius: BorderRadius.circular(6)),
              child: InkWell(
                onTap: () => controllerLogin.signupPageIndex++,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/sign_up/button_shape.png"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Complete",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold mailSection(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        InkWell(
          child: Image.asset(
            "assets/icons/message-question.png",
            width: 24,
          ),
        ),
        const SizedBox(width: 25),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What’s Your\nE-mail Address",
              style: TextStyle(
                  color: Color.fromRGBO(48, 0, 68, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 157.5),
            TextFormField(
              controller: textFormControllerMail,
              decoration: const InputDecoration(
                  hintText: "almeida@gmail.com",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(48, 0, 68, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 22)),
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(48, 0, 68, 1),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(48, 0, 68, 1),
                  borderRadius: BorderRadius.circular(6)),
              child: InkWell(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  currentFocus.unfocus();
                  Future.delayed(const Duration(milliseconds: 300))
                      .whenComplete(() {
                    controllerLogin.signupPageIndex++;
                    textFormControllerMail.clear();
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/sign_up/button_shape.png"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold nameSection() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        InkWell(
          child: Image.asset(
            "assets/icons/message-question.png",
            width: 24,
          ),
        ),
        const SizedBox(width: 25),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What’s Your\nFull Name, Please?",
              style: TextStyle(
                  color: Color.fromRGBO(48, 0, 68, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 157.5),
            TextFormField(
              controller: textFormControllerName,
              decoration: const InputDecoration(
                  hintText: "Almedia Silva",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(48, 0, 68, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 22)),
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(48, 0, 68, 1),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(48, 0, 68, 1),
                  borderRadius: BorderRadius.circular(6)),
              child: InkWell(
                onTap: () {
                  textFormControllerName.clear();
                  controllerLogin.signupPageIndex++;
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/sign_up/button_shape.png"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold phoneVerify(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        InkWell(
          child: Image.asset(
            "assets/icons/message-question.png",
            width: 24,
          ),
        ),
        const SizedBox(width: 25),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Verify Your\nPhone Number?",
              style: TextStyle(
                  color: Color.fromRGBO(48, 0, 68, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 52.15, left: 54),
              child: Text(
                "Verification code is sent to \n \n     +351 123 456 7890",
                style: TextStyle(
                    color: Color.fromRGBO(48, 0, 68, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 61),
            PinCodeTextField(
              cursorColor: const Color.fromRGBO(48, 0, 68, 1),
              animationDuration: const Duration(seconds: 0),
              autoFocus: true,
              keyboardType: TextInputType.phone,
              appContext: context,
              length: 4,
              onChanged: (var a) {},
              textStyle: const TextStyle(color: Color.fromRGBO(48, 0, 68, 1)),
              pinTheme: PinTheme(
                  disabledColor: const Color.fromRGBO(229, 229, 229, 1),
                  activeColor: const Color.fromRGBO(229, 229, 229, 1),
                  inactiveColor: const Color.fromRGBO(229, 229, 229, 1),
                  activeFillColor: const Color.fromRGBO(229, 229, 229, 1),
                  selectedColor: const Color.fromRGBO(229, 229, 229, 1),
                  selectedFillColor: const Color.fromRGBO(229, 229, 229, 1),
                  inactiveFillColor: const Color.fromRGBO(229, 229, 229, 1)),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Didn’t receive code?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Request again",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(48, 0, 68, 1),
                  borderRadius: BorderRadius.circular(6)),
              child: InkWell(
                onTap: () => controllerLogin.signupPageIndex++,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/sign_up/button_shape.png"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  numberSection() {
    return Obx(
      () => Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
          InkWell(
            child: Image.asset(
              "assets/icons/message-question.png",
              width: 24,
            ),
          ),
          const SizedBox(width: 25),
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What’s Your\nPhone Number?",
                style: TextStyle(
                    color: Color.fromRGBO(48, 0, 68, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 52.15, left: 54),
                child: Text(
                  "You’ll receive 4 digit code\n    to verify your number",
                  style: TextStyle(
                      color: Color.fromRGBO(48, 0, 68, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 61),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          style: const TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)),
                          value: controllerLogin.phoneCode.value,
                          items: CountrConst.countryList.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? a) {
                            controllerLogin.phoneCode.value = a!;
                          }),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      keyboardType: TextInputType.phone,
                      autofocus: true,
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 100),
              Container(
                width: 290,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(48, 0, 68, 1),
                    borderRadius: BorderRadius.circular(6)),
                child: InkWell(
                  onTap: () => controllerLogin.signupPageIndex++,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/sign_up/button_shape.png"),
                      const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Container mainPage(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/sign_up/sign_up_shape.png"),
              Image.asset(
                "assets/images/sign_up/blind_look.png",
                height: 31.59,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(48, 0, 68, 1),
                    borderRadius: BorderRadius.circular(6)),
                width: 290,
                height: 50,
                child: InkWell(
                  onTap: () => controllerLogin.signupPageIndex++,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/sign_up/button_shape.png"),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 65),
              InkWell(
                child: const Text("or sign in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
