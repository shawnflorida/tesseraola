import 'package:flutter/material.dart';

class ConcludingPrayerWidget extends StatelessWidget {
  final String prayerText;
  final double fontSize;
  final String fontFamily;

  const ConcludingPrayerWidget({
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
                color: Color.fromARGB(
                    255, 107, 29, 29), // You can customize the color
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

const String concludingPrayer = '''
(Make the Sign of the Cross)
In the name of the Father, etc. 

We fly to your patronage, O holy Mother of God; despise not our prayers in our necessities, but ever deliver us from all dangers, O glorious and blessed Virgin.

v. Mary Immaculate, Mediatrix of all Graces
(or Invocation appropriate to Praesidium)
R. Pray for us.
v. Saints Michael, Gabriel and Raphael
R. Pray for us.
v. All you heavenly Powers, Mary's Legion of Angels
R. Pray for us.
v. St. John the Baptist
R. Pray for us.
v. Saints Peter and Paul
R. Pray for us.

Confer, O Lord, on us, who serve beneath the standard of Mary, that fullness of faith in You and trust in her, to which it is given to conquer the world. 
\nGrant us a lively faith, animated by charity, which will enable us to perform all our actions from the motive of pure love of You, and ever to see You and serve You in our neighbor; 
\na faith, firm and immovable as a rock, through which we shall rest tranquil and steadfast amid the crosses, toils and disappointments of life; 
\na courageous faith which will inspire us to undertake and carry out without hesitation great things for your glory and for the salvation of souls; 
\na faith which will be our Legion's Pillar of Fire - to lead us forth united - to kindle everywhere the fires of divine love - to enlighten those who are in darkness and in the shadow of death - to inflame those who are lukewarm - to bring back life to those who are dead in sin; 
\nand which will guide our own feet in the way of peace; so that - the battle of life over - our Legion may reassemble, without the loss of any one, in the kingdom of Your love and glory. Amen.

May the souls of our departed legionaries and the souls of all the faithful departed through the mercy of God rest in peace. Amen.

(Make the Sign of the Cross)
In the name of the Father, etc.
''';
