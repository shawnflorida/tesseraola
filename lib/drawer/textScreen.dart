import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tessera/drawer/textSettings.dart';

class TextScreen extends StatelessWidget {
  final PrayerType prayerType;
  final String title;
  final double fontSize;

  const TextScreen(
      {Key? key,
      required this.title,
      required this.prayerType,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white24,
          surfaceTintColor: Colors.white24,
          title: Text(
            title,
            style: GoogleFonts.bitter(),
          ), // Use the passed title
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 18, 52, 104),
            fontSize: fontSize,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdaptiveText(
              initialFontSize: 15.0,
              initialHighlightEnabled: false,
              prayerType: prayerType,
            ),
            // Add other widgets as needed
          ],
        ),
      ),
    );
  }
}
