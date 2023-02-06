import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({Key? key}) : super(key: key);

  @override
  final String aboutUs =
      '''Welcome to AR Interior Decor, your go-to mobile application for all your interior design needs! At AR Interior Decor, we understand the importance of creating a space that reflects your personal style and enhances your daily life. That's why we have developed a cutting-edge augmented reality technology that allows you to visualize furniture and decor in your own space, before making any purchase decisions.

With our app, you can browse through our extensive catalog of furniture and decor items, and see how they would look in your home before you buy. Our augmented reality technology makes it easy to move, rotate, and resize items, so you can get a sense of how they will fit in your space.

In addition to our cutting-edge technology, we also offer a wide range of products from top manufacturers and designers, so you can find the perfect piece for your home, no matter your style or budget.

At AR Interior Decor, we are dedicated to providing you with the best customer service, so you can trust that we will help you every step of the way. With our user-friendly interface and easy-to-use features, our app makes it easy for you to decorate your home and create the space of your dreams.

Thank you for choosing AR Interior Decor. We look forward to helping you create a space that you love!''';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'About Us',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: AutoSizeText(
                aboutUs,
                style: GoogleFonts.poppins(fontSize: 13),
                maxLines: 100,
              )),
            ],
          ),
        ));
  }
}
