import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_drawer.dart';
import 'video_player.dart';
import 'info.dart';
import 'videos/adblue.dart';
import 'videos/truma.dart';
import 'videos/stroom.dart';
import 'videos/koelkast.dart';
import 'videos/luifel.dart';
import 'videos/fietsendrager.dart';
import 'campers.dart';
import 'contact.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Haffkamp'),
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage(title: 'Haffkamp')),
        GetPage(name: '/info', page: () => const Info()),
        GetPage(name: '/videos/adblue', page: () => const Adblue()),
        GetPage(name: '/videos/truma', page: () => const Truma()),
        GetPage(name: '/videos/stroom', page: () => const Stroom()),
        GetPage(name: '/videos/koelkast', page: () => const Koelkast()),
        GetPage(name: '/videos/luifel', page: () => const Luifel()),
        GetPage(
            name: '/videos/fietsendrager', page: () => const Fietsendrager()),
        GetPage(name: '/campers', page: () => const Campers()),
        GetPage(name: '/contact', page: () => const Contact()),
      ],
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF75A854)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF9fd67b),
        ),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      drawer: myDrawer(context),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            VideoPlayerWidget(
              videoPath: 'assets/videos/NeverGonnaGiveYouUp.webm',
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Welkom bij Haffkamp Campers Randstad',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Haffkamp Campers Randstad is een full-service camper bedrijf, waar u terecht kunt voor huren en kopen van de nieuwste luxe campers (2 tot 7 personen).',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
