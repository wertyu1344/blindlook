import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({
    Key? key,
    required this.constants,
  }) : super(key: key);

  final Constants constants;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 10),
        alignment: Alignment.centerLeft,
        height: 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: constants.primaryColor, width: 1.5)),
        child: DropdownButton(
          style: TextStyle(
              color: constants.primaryColor.withOpacity(0.6),
              fontSize: 14,
              fontStyle: FontStyle.italic),
          borderRadius: BorderRadius.circular(16),
          underline: const SizedBox(),
          value: "Katagori seçiniz",
          isExpanded: true,
          items: [
            DropdownMenuItem(
                value: "Katagori seçiniz",
                onTap: () {},
                child: Row(
                  children: const [
                    SizedBox(width: 13),
                    Text("Katagori seçiniz"),
                  ],
                )),
          ],
          onChanged: (newValue) {},
        ));
  }
}
