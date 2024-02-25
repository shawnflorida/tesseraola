import 'package:flutter/material.dart';

class LegionOfMaryPrayerWidget extends StatelessWidget {
  final String prayerText;
  final double fontSize;
  final String fontFamily;

  const LegionOfMaryPrayerWidget({
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
          children: _buildPrayerText(),
        ),
      ),
    );
  }

  List<Widget> _buildPrayerText() {
    List<Widget> widgets = [];
    List<String> lines = prayerText.split('\n');
    for (String line in lines) {
      if (line == '(Make the Sign of the Cross)') {
        // Style for "Sign of the Cross"
        widgets.add(
          Center(
            child: Text(
              line,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                color: Colors.red, // You can customize the color
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
              color: Colors.blueAccent, // You can customize the color
            ),
          ),
        );
      } else if (line.startsWith('R.')) {
        // Style for lines starting with 'R.'
        widgets.add(
          Text(
            line,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontStyle: FontStyle.italic,
              color: Colors.green, // You can customize the color
            ),
          ),
        );
      } else {
        // Default style for other lines
        widgets.add(
          Text(
            line,
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

const String legionOfMaryPrayer = '''
(Make the Sign of the Cross)
In the name of the Father, etc. 

Come, O Holy Spirit, fill the hearts of Your faithful, and enkindle in them the fire of Your love.
v. Send forth Your Spirit, O Lord, and they shall be created.
R. And You shall renew the face of the earth.

Let us pray.

God our Father, pour out the gifts of Your Holy Spirit on the world. You sent the Spirit on Your Church to begin the teaching of the gospel: now let the Spirit continue to work in the world through the hearts of all who believe. Through Christ our Lord. Amen.

v. You, O Lord, will open my lips.
R. And my tongue shall announce Your praise.
v. Incline unto my aid, O God.
R. O Lord, make haste to help me.
v. Glory be to the Father, etc.
R. As it was in the beginning, etc.

Then follow five decades of the Rosary with the Hail, Holy Queen. 

Hail, Holy Queen, Mother of Mercy; hail, our life, our sweetness and our hope. To you we cry, poor banished children of Eve, to you we send up our sighs, mourning and weeping in this valley of tears. Turn then, O most gracious advocate, your eyes of mercy towards us, and after this our exile, show us the blessed fruit of your womb, Jesus. O clement, O loving, O sweet Virgin Mary.

v. Pray for us, O holy Mother of God.
R. That we may be made worthy of the promises of Christ.

Let us pray.
O God, Whose only-begotten Son, by His life, death and resurrection, has purchased for us the rewards of eternal salvation; grant, we beseech You, that meditating upon these mysteries in the most holy Rosary of the Blessed Virgin Mary, we may imitate what they contain, and obtain what they promise. Through the same Christ our Lord. Amen. 

v. Most Sacred Heart of Jesus
R. Have mercy on us.
v. Immaculate Heart of Mary
R. Pray for us.
v. St. Joseph
R. Pray for us.
v. St. John the Evangelist
R. Pray for us.
v. St. Louis-Marie deMontfort
R. Pray for us.

(Make the Sign of the Cross)
In the name of the Father, etc.
''';
