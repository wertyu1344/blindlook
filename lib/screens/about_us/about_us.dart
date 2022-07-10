import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(height: 63),
                Center(
                  child: Text(
                    "About Us",
                    style: TextStyle(
                        color: Color.fromRGBO(48, 0, 68, 1), fontSize: 22),
                  ),
                ),
                SizedBox(height: 64),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/images/loyality/migros.png",
                    height: 340,
                  ),
                ),
                const SizedBox(height: 53),
                Text(
                  """Migros has become a Blind Friendly Brand (EyeBrand) and is now in the Audio freedom world of BlindLook!

We know that every consumer deserves the highest quality experience. As BlindLook, our responsibility is to bring the blind and visually impaired consumer to the quality service they deserve. Because not seeing is just a difference. This difference turns into an insurmountable disability only when circumstances prevent us.

Thank you Migros for removing the barriers in your products and services and being a partner in our dream of an equal and barrier-free world! Together we are much stronger! """,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
