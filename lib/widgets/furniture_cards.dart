import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/furniture_list.dart';
import '../views/homeView.dart';
import '../views/objectgesturesexample.dart';

class FurnitureCards extends StatelessWidget {
  final List<String>? title;
  const FurnitureCards({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Swiper(
        itemCount: HomeFurnitureList.furnitureHome.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 12, left: 3, top: 3, bottom: 3),
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
                        HomeFurnitureList.furnitureHome[index][1],
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            HomeFurnitureList.furnitureHome[index][0],
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: 125,
                              height: 150,
                              child: AutoSizeText(
                                HomeFurnitureList.furnitureHome[index][3],
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
                                                .furnitureHome[index][2],
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
    );
  }
}
