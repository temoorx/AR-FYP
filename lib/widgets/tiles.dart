import 'package:arcore_example/views/localAndWebObjectsView.dart';
import 'package:arcore_example/views/officePage.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Toptiles extends StatelessWidget {
  final Color choosecolor;
  final String homeorOffice;
  final Color textColor;

  Toptiles(
      {Key? key,
      required this.choosecolor,
      required this.homeorOffice,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: 142,
      child: Center(
          child: Text(homeorOffice,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: textColor))),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: textColor,
            spreadRadius: 0,
            blurRadius: 1,
            blurStyle: BlurStyle.outer)
      ], borderRadius: BorderRadius.circular(12), color: choosecolor),
    );
  }
}
