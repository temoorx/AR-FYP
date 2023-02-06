import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:arcore_example/views/homeDecorPage.dart';
import 'package:arcore_example/views/instructions_page.dart';
import 'package:arcore_example/views/objectgesturesexample.dart';
import 'package:arcore_example/widgets/furniture_tile.dart';
import 'package:arcore_example/widgets/tiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/furniture_list.dart';
import 'about_us.dart';
import 'officePage.dart';

class MyHomePage extends StatelessWidget {
  final String? title;

  const MyHomePage({this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DecoAR',
                    style: GoogleFonts.poppins(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutUsPage()));
                      },
                      child: Image.asset(
                        'assets/images/AR-Icon.png',
                        height: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                TypewriterAnimatedText('Design with Reality...',
                    textStyle: GoogleFonts.poppins(
                      fontSize: 24,
                    ),
                    speed: const Duration(milliseconds: 100))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20.0, right: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeDecorScreen()));
                      },
                      child: Toptiles(
                        choosecolor: Color.fromRGBO(231, 241, 254, 1),
                        homeorOffice: 'Design\n  Your\n Home',
                        textColor: Color.fromRGBO(85, 85, 85, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OfficeScreen()));
                      },
                      child: Toptiles(
                        choosecolor: Colors.grey,
                        homeorOffice: 'Design\n  Your\n Office',
                        textColor: Color.fromRGBO(235, 211, 211, 1),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: HomeFurnitureList.furnitureHome.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FurnitureTiles(
                  funitureName: HomeFurnitureList.furnitureHome[index][0],
                  furnitureImagePath: HomeFurnitureList.furnitureHome[index][1],
                  iconButton: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ObjectGesturesWidget(
                                    modelLink: HomeFurnitureList
                                        .furnitureHome[index][2],
                                  )));
                    },
                    icon: Icon(Icons.camera_enhance_rounded),
                  ),
                );
              },
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: HomeFurnitureList.furnitureOffice.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FurnitureTiles(
                  funitureName: HomeFurnitureList.furnitureOffice[index][0],
                  furnitureImagePath: HomeFurnitureList.furnitureOffice[index]
                      [1],
                  iconButton: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ObjectGesturesWidget(
                                    modelLink: HomeFurnitureList
                                        .furnitureOffice[index][2],
                                  )));
                    },
                    icon: Icon(Icons.camera_enhance_rounded),
                  ),
                );
              },
            )),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructionsPage()));
                    },
                    child: Text(
                      'Instructions',
                      style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    ));
  }
}
