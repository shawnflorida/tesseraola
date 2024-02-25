import 'package:flutter/material.dart';

class CatenaLegionisWidget extends StatelessWidget {
  final String prayerText;
  final double fontSize;
  final String fontFamily;

  const CatenaLegionisWidget({
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
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Customize the color
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
              color: Colors.blueAccent, // Customize the color
            ),
          ),
        );
      } else if (line.startsWith('R.')) {
        // Style for lines starting with '$$R.'
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

const String catenaLegionis = '''
Antiphon. Who is she that comes forth as the morning rising, fair as the moon, bright as the sun, terrible as an army set in battle array?

(Make the Sign of the Cross)
v. My soul glorifies the Lord.*
R. My spirit rejoices in God, my Saviour.

v. He looks on His servant in her lowliness; hence forth all ages will call me blessed. 
R. The Almighty works marvels for me. Holy His name!

v. His mercy is from age to age, on those who fear Him. 
R. He puts forth His arm in strength and scatters the proud-hearted.

v. He casts the mighty from their thrones and raises the lowly. 
R. He fills the starving with good things, sends the rich away empty.

v. He protects Israel His servant, remembering His mercy,
R. The mercy promised to our fathers, to Abraham and his sons for ever. 

v. Glory be to the Father, and to the Son and to the Holy Spirit..
R. As it was in the beginning is now, and ever shall be, world without end. Amen.

Antiphon. Who is she that comes forth as the morning rising, fair as the moon, bright as the sun, terrible as an army set in battle array?

v. O Mary, conceived without sin.
R. Pray for us who have recourse to you. 

Let us pray.
O Lord Jesus Christ, our mediator with the Father, Who has been Pleased to appoint the Most Blessed Virgin, Your mother, to be our mother also, and our mediatrix with You, mercifully grant that whoever comes to You seeking Your favours may rejoice to receive all of them through her. Amen.
''';
