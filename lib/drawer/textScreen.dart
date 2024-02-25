import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tessera/drawer/textSettings.dart';

class TextScreen extends StatelessWidget {
  final PrayerType prayerType;
  final String title;

  const TextScreen({Key? key, required this.title, required this.prayerType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            title,
            style: GoogleFonts.bitter(),
          ), // Use the passed title
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontSize: 24.0,
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
