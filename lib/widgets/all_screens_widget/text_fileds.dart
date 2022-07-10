import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class TextFeilds extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final Function onchange;
  const TextFeilds({
    Key? key,
    required this.constants,
    required this.hint,
    required this.controller,
    required this.onchange,
  }) : super(key: key);

  final Constants constants;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText) {
        onchange(newText);
        controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length));
      },
      controller: controller,
      style: TextStyle(color: constants.primaryColor, fontSize: 16),
      cursorColor: Colors.white54,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            color: constants.primaryColor.withOpacity(0.6),
            fontSize: 14,
            fontStyle: FontStyle.italic),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            width: 1.5,
            color: constants.primaryColor,
            style: BorderStyle.solid,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            width: 1.5,
            color: constants.primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            width: 1.5,
            style: BorderStyle.solid,
            color: constants.primaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            width: 1.5,
            style: BorderStyle.solid,
            color: constants.primaryColor,
          ),
        ),
      ),
    );
  }
}
