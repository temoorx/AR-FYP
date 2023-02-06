import 'package:arcore_example/widgets/instructions_texts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsPage extends StatelessWidget {
  InstructionsPage({Key? key}) : super(key: key);

  @override
  final String instructionText = '''

1-Browse through our catalog of furniture and decor items by selecting the "Catalog" from the main menu.

2-When you find an item that you are interested in, tap on the button to see how it would look in your space.

3-Grant access to your device's camera so that you can view the item in augmented reality.

4-Move the item around by dragging it with your finger, or resize it by pinching and zooming.

5-Rotate the item by swiping left or right on the screen.

For support or any question, you can contact to us.

Note: If you're encountering any trouble with AR visualization, make sure that you are in a well-lit environment, you can also try turning off the lights or moving to a different location. Also, check your device's AR support and enable it if not.
  ''';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Instructions',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AutoSizeText(
                instructionText,
                maxLines: 100,
                style: GoogleFonts.poppins(fontSize: 14),
              )
            ],
          ),
        ));
  }
}
