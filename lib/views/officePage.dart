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

class OfficeScreen extends StatefulWidget {
  const OfficeScreen({Key? key}) : super(key: key);

  @override
  State<OfficeScreen> createState() => _OfficeScreenState();
}

class _OfficeScreenState extends State<OfficeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
              TyperAnimatedText("Be Innovative!",
                  textStyle: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  speed: const Duration(milliseconds: 100)),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8),
              child: Text("Steps:",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600)),
            ),
            InstructionsTexts(
              textColor: Colors.white,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 300,
              child: Swiper(
                itemCount: HomeFurnitureList.furnitureOffice.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 12, left: 3, top: 3, bottom: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              0,
                              0,
                            ),
                            blurRadius: 3,
                            spreadRadius: 1,
                          ), //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRect(
                              child: Image.asset(
                                HomeFurnitureList.furnitureOffice[index][1],
                                scale: 1.1,
                                fit: BoxFit.fill,
                                width: 220,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12, top: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    HomeFurnitureList.furnitureOffice[index][0],
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 125,
                                      height: 150,
                                      child: AutoSizeText(
                                        HomeFurnitureList.furnitureOffice[index]
                                            [3],
                                        style: GoogleFonts.poppins(),
                                        overflow: TextOverflow.fade,
                                        maxLines: 15,
                                      ),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ObjectGesturesWidget(
                                                    modelLink: HomeFurnitureList
                                                            .furnitureOffice[
                                                        index][2],
                                                  )));
                                    },
                                    child: const Icon(
                                      Icons.control_camera_sharp,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
