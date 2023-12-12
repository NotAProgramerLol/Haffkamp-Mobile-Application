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
        // Add other GetPages entries here
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      drawer: myDrawer(context),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.8, // Adjust this value to control the height of the background image
            child: Image.asset(
              'assets/images/camper.png', // Replace with your image path
              
            ),
          ),
          Column(
            children: [
              Spacer(), // Add Spacer to create space at the top
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
                      padding: const EdgeInsets.all(16.0),
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
              Spacer(), // Add Spacer to create space between Card and VideoPlayer
              VideoPlayerWidget(
                videoPath: 'assets/videos/Test_Main_Video.mp4',
              ),
            ],
          ),
        ],
      ),
    );
  }
}