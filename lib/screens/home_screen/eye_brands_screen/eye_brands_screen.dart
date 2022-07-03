import 'package:blindlook/constants/constants.dart';
import 'package:blindlook/widgets/eye_brands_widgets/eye_brands_search_widget.dart';
import 'package:blindlook/widgets/home_page_widgets/eye_brads/grid_view_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/eye_brands_widgets/category_dialog.dart';
import '../../../widgets/eye_brands_widgets/country_dialog.dart';
import '../../../widgets/eye_brands_widgets/filters.dart';

class EyeBrands extends StatelessWidget {
  EyeBrands({Key? key}) : super(key: key);
  final Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: constants.pagePadding,
        child: Column(
          children: [
            buildSizedBox(h: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 24,
                  height: 24,
                ),
                Text(
                  "EyeBrands",
                  style: constants.requestTextStyleTitle,
                ),
                IconButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) =>
                          EyeBrandsSearchWidget(context: context)),
                  icon: Image.asset(
                    "assets/images/simulation_page_images/search.png",
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
            buildSizedBox(h: 50),
            Container(
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
                      showDialog(
                          context: context,
                          builder: (context) => CountryDialog());
                    },
                    size: size,
                    title: "Country",
                    index: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Filter(
                      setStateCallBack: () {
                        showDialog(
                            context: context,
                            builder: (context) => CategoryDialog());
                      },
                      size: size,
                      title: "Category",
                      index: 2,
                    ),
                  ),
                ],
              ),
            ),
            buildSizedBox(h: 25),
            Expanded(
              child: GridView.builder(
                  itemCount: 20,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => GridViewItems(
                        index: index,
                      )),
            ),
          ],
        ));
  }

  buildSizedBox({double h = 0, double w = 0}) {
    return SizedBox(height: h, width: w);
  }
}
