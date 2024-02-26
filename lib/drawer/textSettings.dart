// ignore: file_names
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tessera/drawer/cathenaLegionisWidget.dart';
import 'package:tessera/drawer/concludingPrayerWidget.dart';
import 'package:tessera/drawer/frankDuffWidget.dart';
import 'package:tessera/drawer/legionOfMaryPrayerWidget.dart';

enum PrayerType {
  legionOfMary,
  catenaLegionis,
  concludingPrayer,
  frankDuff,
  edelQuinn,
  alfieLambe,
  about
}

class AdaptiveText extends StatefulWidget {
  double initialFontSize;
  final bool initialHighlightEnabled;
  final PrayerType prayerType;

  AdaptiveText({
    Key? key,
    this.initialHighlightEnabled = false,
    required this.initialFontSize,
    required this.prayerType,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AdaptiveTextState createState() => _AdaptiveTextState();
}

class _AdaptiveTextState extends State<AdaptiveText> {
  double _fontSize = 0;

  @override
  void initState() {
    super.initState();
    _fontSize = widget.initialFontSize;
  }

  String _fontFamily = 'Bitter';

  @override
  Widget build(BuildContext context) {
    Widget prayerWidget;
    switch (widget.prayerType) {
      case PrayerType.legionOfMary:
        prayerWidget = LegionOfMaryPrayerWidget(
          prayerText: legionOfMaryPrayer,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.catenaLegionis:
        prayerWidget = CatenaLegionisWidget(
          prayerText: catenaLegionis,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.concludingPrayer:
        prayerWidget = ConcludingPrayerWidget(
          prayerText: concludingPrayer,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.frankDuff:
        prayerWidget = FrankDuffPrayerWidget(
          prayerText: frankDuffPrayer,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.edelQuinn:
        prayerWidget = FrankDuffPrayerWidget(
          prayerText: edelQuinnPrayer,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.alfieLambe:
        prayerWidget = FrankDuffPrayerWidget(
          prayerText: alfieLambePrayer,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
      case PrayerType.about:
        prayerWidget = FrankDuffPrayerWidget(
          prayerText: about,
          fontSize: _fontSize,
          fontFamily: _fontFamily,
        );
        break;
    }

    return Expanded(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onScaleUpdate: (ScaleUpdateDetails details) {
                    setState(() {
                      _fontSize = widget.initialFontSize *
                          details.scale.clamp(0.5, 2.0);
                    });
                  },
                  child: prayerWidget,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
              onPressed: () {
                _showOptionsBottomSheet(context);
              },
              child: const Row(
                children: [
                  // Text(
                  //   'Settings', // Replace with the desired text
                  //   style: TextStyle(
                  //     fontSize: 10.0, // Adjust the font size as needed
                  //     fontWeight:
                  //         FontWeight.bold, // Adjust the font weight as needed
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Icon(
                    Icons.settings, // Replace with the desired icon
                    size: 20.0, // Adjust the size as needed
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: 300,
              padding: const EdgeInsets.all(35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Options',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 97, 209),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.format_size),
                      const SizedBox(width: 8.0),
                      const Text('Text Size:'),
                      Expanded(
                        child: Slider(
                          value: widget.initialFontSize,
                          min: 8.0,
                          label: widget.initialFontSize.round().toString(),
                          divisions: 10,
                          thumbColor: const Color.fromARGB(255, 22, 97, 209),
                          max: 32.0,
                          onChanged: (value) {
                            setState(() {
                              widget.initialFontSize = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.font_download),
                      const SizedBox(width: 12.0),
                      const Text('Font Type:'),
                      const SizedBox(width: 12.0),
                      DropdownButton<String>(
                        value: _fontFamily,
                        onChanged: (String? value) {
                          setState(() {
                            _fontFamily = value!;
                          });
                        },
                        items: [
                          'Arial',
                          'Bitter',
                          'Helvetica',
                          'Times New Roman',
                          'Courier New',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      widget.initialFontSize = 15;
                      _fontFamily = 'Bitter';
                    },
                    child: const Text('Default'),
                  ),
                ],
              ),
            );
          },
        );
      },
    ).then((value) {
      setState(() {
        _fontSize = widget.initialFontSize;
      });
    });
  }
}
