import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FurnitureTiles extends StatelessWidget {
  final String funitureName;
  final String furnitureImagePath;
  final IconButton iconButton;

  FurnitureTiles(
      {Key? key,
      required this.funitureName,
      required this.furnitureImagePath,
      required this.iconButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, left: 5, top: 1, bottom: 1),
      child: Container(
        width: width / 2.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 0,
                blurRadius: 1,
                blurStyle: BlurStyle.outer)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  height: 120,
                  width: 180,
                  child: Image.asset(
                    furnitureImagePath,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    funitureName,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  iconButton
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
