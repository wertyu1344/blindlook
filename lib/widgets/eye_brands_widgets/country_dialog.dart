import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'filters.dart';

class CountryDialog extends StatefulWidget {
  CountryDialog({Key? key}) : super(key: key);

  @override
  State<CountryDialog> createState() => _CountryDialogState();
}

class _CountryDialogState extends State<CountryDialog> {
  @override
  void dispose() {
    super.dispose();
  }

  final Constants constants = Constants();
  final LoginClass controller = Get.put(LoginClass());

  final List<List> countries = [
    ["Spain", false],
    ["Sweden", false],
    ["Turkey", false],
    ["United Arab", false],
    ["Spain", false],
    ["Sweden", false],
    ["Turkey", false],
    ["United Arab", false],
    ["Spain", false],
    ["Sweden", false],
    ["Turkey", false],
    ["United Arab", false],
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        controller.eyeBrandsFilterIndex.value = 0;
        controller.eyeBrandsVisible.value = true;
        return true;
      },
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: constants.pagePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: "ccc",
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: constants.primaryColor,
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Image.asset(
                            "assets/images/simulation_page_images/sort.png",
                            width: 28,
                            height: 28,
                          ),
                        ),
                        Filter(
                          setStateCallBack: () {
                            setState(() {});
                          },
                          size: size,
                          title: "Country",
                          index: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Filter(
                            setStateCallBack: () {
                              setState(() {});
                            },
                            size: size,
                            title: "Category",
                            index: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: size.height / 1.7,
                  decoration: BoxDecoration(
                      color: constants.primaryColor,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white54,
                          decoration: const InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                            errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 143, 24, 24),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                width: 1.4,
                                color: Colors.white54,
                                style: BorderStyle.solid,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Colors.white54,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                          child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: countries.length,
                        itemBuilder: (c, i) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                countries[i][0],
                                style: countries[i][1]
                                    ? constants
                                        .eyeBrandsListViewTextStyleSelected
                                    : constants
                                        .eyeBrandsListViewTextStyleNONSelected,
                              ),
                              Checkbox(
                                  checkColor: constants.primaryColor,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.white),
                                  value: countries[i][1],
                                  onChanged: (newSelected) {
                                    countries[i][1] = !countries[i][1];
                                    setState(() {});
                                  })
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
