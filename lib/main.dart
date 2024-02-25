import 'package:flutter/material.dart';
import 'package:tessera/drawer/textScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tessera/drawer/textSettings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Legion of Mary Tessera',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        textTheme: GoogleFonts.bitterTextTheme(),
      ),
      home: const MyHomePage(title: 'Legion of Mary Tessera'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
          fontFamily: 'Bitter',
          fontSize: 24.0,
        ),
      ),
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                child: Image.asset(''),
              ),
            ),
            ListTile(
              title: const Text(
                'Legion of Mary Prayer',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Legion of Mary Prayer',
                            prayerType: PrayerType.legionOfMary,
                          )),
                );
              },
              leading: const Icon(
                Icons.book,
                color: Colors.lightBlueAccent,
              ),
            ),
            ListTile(
              title: const Text(
                'Catena Legionis',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Catena Legionis',
                            prayerType: PrayerType.catenaLegionis,
                          )),
                );
              },
              leading: const Icon(
                Icons.star,
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/legion.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
