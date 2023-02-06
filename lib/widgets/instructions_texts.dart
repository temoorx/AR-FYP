import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsTexts extends StatelessWidget {
  final Color textColor;
  const InstructionsTexts({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '◇ Browse through the available 3D models.',
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '◈ Select a desired Model.',
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '◆ Let it calibrate it to your physical space.',
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '◆ Tap on Screen to view in your space.',
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
