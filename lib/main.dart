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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 18, 52, 104)),
        useMaterial3: true,
        textTheme: GoogleFonts.bitterTextTheme(),
      ),
      home: const MyHomePage(
        title: 'Legion of Mary Tessera',
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 18, 52, 104),
          fontFamily: 'Bitter',
          fontSize: 24.0,
        ),
      ),
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.red, // Background color of the circle
              child: ClipOval(
                child: Container(
                  width: 160, // Adjust the size of the clipped container
                  height: 160, // Adjust the size of the clipped container
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Legion of Mary Prayer',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
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
                            fontSize: 25.0,
                          )),
                );
              },
              leading: const Icon(Icons.book,
                  color: Color.fromARGB(255, 18, 52, 104)),
            ),
            ListTile(
              title: const Text(
                'Catena Legionis',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
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
                          fontSize: 25.0)),
                );
              },
              leading: const Icon(
                Icons.star,
                color: Colors.amberAccent,
              ),
            ),
            ListTile(
              title: const Text(
                'Concluding Prayer',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Concluding Prayer',
                            prayerType: PrayerType.concludingPrayer,
                            fontSize: 25.0,
                          )),
                );
              },
              leading: const Icon(
                Icons.hail_rounded,
                color: Color.fromARGB(255, 8, 204, 83),
              ),
            ),
            ListTile(
              title: const Text(
                'Prayer for the Beatification of Frank Duff',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Prayer for the Beatification of Frank Duff',
                            prayerType: PrayerType.frankDuff,
                            fontSize: 16.0,
                          )),
                );
              },
              leading: const Icon(
                Icons.face_6_sharp,
                color: Color.fromARGB(255, 67, 157, 209),
              ),
            ),
            ListTile(
              title: const Text(
                'Prayer to Edel Quinn',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Prayer to Edel Quinn',
                            prayerType: PrayerType.edelQuinn,
                            fontSize: 18.0,
                          )),
                );
              },
              leading: const Icon(
                Icons.face_2_rounded,
                color: Color.fromARGB(255, 102, 29, 109),
              ),
            ),
            ListTile(
              title: const Text(
                'Prayer to Alfie Lambe',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'Prayer to Alfie Lambe',
                            prayerType: PrayerType.alfieLambe,
                            fontSize: 18.0,
                          )),
                );
              },
              leading: const Icon(
                Icons.face_retouching_natural_outlined,
                color: Color.fromARGB(255, 122, 9, 9),
              ),
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 52, 104),
                  fontFamily: 'Bitter',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextScreen(
                            title: 'About',
                            prayerType: PrayerType.about,
                            fontSize: 25.0,
                          )),
                );
              },
              leading: const Icon(
                Icons.info,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
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
