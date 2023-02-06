import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arcore_example/utils/furniture_list.dart';
import 'package:arcore_example/views/homeView.dart';
import 'package:arcore_example/widgets/instructions_texts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/furniture_cards.dart';
import 'objectgesturesexample.dart';

class HomeDecorScreen extends StatefulWidget {
  const HomeDecorScreen({Key? key}) : super(key: key);

  @override
  State<HomeDecorScreen> createState() => _HomeDecorScreenState();
}

class _HomeDecorScreenState extends State<HomeDecorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                    TyperAnimatedText("Be Creative!",
                        textStyle: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 100)),
                  ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8),
              child: Text("Steps:",
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w600)),
            ),
            InstructionsTexts(
              textColor: Colors.black,
            ),
            SizedBox(
              height: 40,
            ),
            FurnitureCards(),
          ],
        ),
      ),
    );
  }
}
