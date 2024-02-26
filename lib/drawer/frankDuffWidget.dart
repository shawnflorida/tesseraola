import 'package:flutter/material.dart';

class FrankDuffPrayerWidget extends StatelessWidget {
  final String prayerText;
  final double fontSize;
  final String fontFamily;

  const FrankDuffPrayerWidget({
    Key? key,
    required this.prayerText,
    required this.fontSize,
    required this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildCatenaText(),
        ),
      ),
    );
  }

  List<Widget> _buildCatenaText() {
    List<Widget> widgets = [];
    List<String> lines = prayerText.split('\n');
    for (String line in lines) {
      if (line.startsWith('Antiphon.')) {
        // Style for Antiphon
        widgets.add(
          Center(
            child: Text(
              line,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                // color: Colors.blue, // Customize the color
              ),
            ),
          ),
        );
      } else if (line.startsWith('(Make the Sign of the Cross)')) {
        // Style for "(Make the Sign of the Cross)"
        widgets.add(
          Center(
            child: Text(
              line,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(
                    255, 197, 56, 46), // Customize the color
              ),
            ),
          ),
        );
      } else if (line.startsWith('v.')) {
        // Style for lines starting with 'v.'
        widgets.add(
          Text(
            line,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              color:
                  const Color.fromARGB(255, 18, 52, 104), // Customize the color
            ),
          ),
        );
      } else if (line.startsWith('R.')) {
        // Style for lines starting with '$$R.'
        widgets.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.justify,
              line,
              style: TextStyle(
                fontSize: fontSize - 3.0,

                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(
                    255, 218, 115, 46), // You can customize the color
              ),
            ),
          ),
        );
      } else {
        // Default style for other lines
        widgets.add(
          Text(
            line,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              color: Colors.black,
            ),
          ),
        );
      }
    }
    return widgets;
  }
}

const String frankDuffPrayer = '''
God our Father, You inspired your servant Frank Duff with a profound insight into the mystery of Your Church, the Body of Christ, and of the place of Mary the Mother of Jesus in this mystery.

In his immense desire to share this insight with others and in filial dependence on Mary he formed her Legion to be a sign of her maternal love for the world and a means of enlisting all her children in the Church's evangelising work. 

We thank you Father for the graces conferred on him and for the benefits accruing to the Church from his courageous and shining faith. With confidence we beg You that through his intercession you grant the petition we lay before You (Mention your prayer requests) 

We ask too that if it be in accordance with Your will, the holiness of his life may be acknowledged by the Church for the glory of your Name, through Christ Our Lord,

Amen.
''';

const String edelQuinnPrayer = '''
Eternal Father, I thank you for the grace you gave to your servant, Edel Quinn, of striving to live always in the joy of your presence, for the radiant charity infused into her heart by your Holy Spirit and for the strength she drew from the Bread of Life to labour until death for the glory of Your name in loving dependence on Mary, Mother of the Church.

Confident, O Merciful Father, that her life was pleasing to you, I beg you to grant me, through her intercession, the special favour I now implore ..........., and to make known by miracles the glory she enjoys in Heaven, so that she may be glorified also by your Church on earth, through Christ Our Lord, Amen
''';

const String alfieLambePrayer = '''
O God, who by your infinite mercy inflamed the heart of your servant, Alphonsus Lambe with an ardent love for you and for Mary, our Mother; a love which revealed itself in a life of intense labour, prayer and sacrifice for the salvation of souls, grant, if it be your will, that we may obtain, by his intercession, what we cannot obtain by our own merits. We ask this through Jesus Christ, Our Lord. Amen

''';

const String about = '''
The sole intention of this application is to provide a more updated and refined experience with the Legion of Mary Tessera. 

It aims to enhance the usability and accessibility, catering to the needs of users in modern context.

This application is developed by Shawn Michael Florida Mana-ay using Dart and Flutter based on NilatS' Legion of Mary-Tessera in Play Store. 

Your feedback and suggestions are highly appreciated as they contribute to the continuous improvement of the application. Thank you for downloading this application. 

Feel free to explore the developer on GitHub:
https://github.com/shawnflorida

Connect with the developer on LinkedIn:
https://www.linkedin.com/in/shawn-michael-florida-mana-ay-7034b7272/

All rights reserved. February 2024.
''';
