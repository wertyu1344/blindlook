import 'package:blindlook/widgets/eye_brands_widgets/eye_brands_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../controller/controller.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen({Key? key}) : super(key: key);
  final Constants constants = Get.find<Constants>();
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var list = [mainPage(context), blogDetail()];
    return Obx(
      () => Scaffold(body: list.elementAt(controller.blogIndex.value)),
    );
  }

  ListView mainPage(context) {
    return ListView(
      children: [
        SizedBox(height: 63),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 24,
              height: 24,
            ),
            Text(
              "Community",
              style: constants.requestTextStyleTitle,
            ),
            InkWell(
              onTap: () {
                Get.dialog(EyeBrandsSearchWidget(context: context));
              },
              child: Image.asset(
                "assets/images/simulation_page_images/search.png",
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 63.0, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stories",
                style: TextStyle(
                    fontSize: 17, color: Color.fromRGBO(164, 164, 164, 1)),
              ),
              SizedBox(height: 25),
              Container(height: 200, width: 1000, color: Colors.red),
              SizedBox(height: 50),
              Text(
                "Blog Posts",
                style: TextStyle(
                    fontSize: 17, color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 29),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title2",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
              buildNewsWidget(
                () {},
                "Blog Post Title",
                "assets/images/news/migros.png",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNewsWidget(var onTap, String text, String image) {
    return InkWell(
      onTap: () {
        controller.blogIndex.value = 1;
        controller.blogPostTitle.value = text;
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Stack(alignment: Alignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(48, 0, 68, 1),
                  Colors.transparent,
                  Colors.transparent,
                ],
              ),
            ),
            width: 1000,
            height: 194,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget blogDetail() {
    return Obx(
      () => ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 63),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => controller.blogIndex.value = 0,
                      child: Image.asset(
                        "assets/images/request_page_images/back.png",
                        height: 24,
                      ),
                    ),
                    Text(
                      controller.blogPostTitle.value,
                      style: const TextStyle(
                          color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
                    ),
                    Image.asset(
                      "assets/images/news/send.png",
                      height: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 63),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/images/loyality/migros.png",
                    height: 340,
                  ),
                ),
                const SizedBox(height: 53),
                const Text(
                  """Migros has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!

We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.

Thank you Migros for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger! """,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
