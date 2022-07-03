import 'package:blindlook/constants/constants.dart';
import 'package:flutter/material.dart';

class EyeBrandsSearchWidget extends StatelessWidget {
  EyeBrandsSearchWidget({Key? key, required this.context}) : super(key: key);
  final Constants constants = Constants();
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: constants.pagePadding,
          decoration: BoxDecoration(
              color: constants.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          height: size.height / 1.3,
          width: size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const SizedBox(
                  width: 40,
                  height: 40,
                ),
                Text(
                  "Search",
                  style: constants.requestTextStyleTitleWhite,
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white54,
                decoration: const InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 143, 24, 24),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1.4,
                      color: Colors.white54,
                      style: BorderStyle.solid,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white54,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white54,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Start typing to seach",
                    style: TextStyle(color: Colors.white54, fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
