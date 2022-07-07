import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  PasswordTextField(this.controller, {Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final Constants constants = Get.find();

  var obscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(color: constants.primaryColor),
        cursorColor: Colors.white54,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              obscure = !obscure;
              setState(() {});
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: constants.primaryColor,
            ),
          ),
          hintText: "Eski şifre",
          hintStyle: TextStyle(
              color: constants.primaryColor.withOpacity(0.6),
              fontSize: 20,
              fontStyle: FontStyle.italic),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              width: 1.5,
              color: constants.primaryColor,
              style: BorderStyle.solid,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              width: 1.5,
              color: constants.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              width: 1.5,
              style: BorderStyle.solid,
              color: constants.primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              width: 1.5,
              style: BorderStyle.solid,
              color: constants.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
