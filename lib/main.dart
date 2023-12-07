import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'app_drawer.dart';
import 'video_player.dart';
import 'info.dart';
import 'videos.dart';
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
        GetPage(name: '/videos', page: () => const Videos()),
        GetPage(name: '/campers', page: () => const Campers()),
        GetPage(name: '/contact', page: () => const Contact()),
      ],
      theme: ThemeData(
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
      body: const Stack(
        children: [
          Center(
            child: Card(
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
          ),
          VideoPlayerWidget(
            videoPath: 'assets/videos/NeverGonnaGiveYouUp.webm',
          ),
        ],
      ),
    );
  }
}
