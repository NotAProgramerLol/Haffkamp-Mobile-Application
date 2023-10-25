import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'app_drawer.dart';
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
  late VideoPlayerController _videoPlayerController;
  late bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/BigBuckBunny.mp4')
          ..initialize().then((_) {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _toggleVideoPlayback() {
    setState(() {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
        _isPlaying = false;
      } else {
        _videoPlayerController.play();
        _isPlaying = true;
      }
    });
  }

  void _stopVideoPlayback() {
    setState(() {
      _videoPlayerController.pause();
      _videoPlayerController.seekTo(Duration.zero);
      _isPlaying = false;
    });
  }

  void _handleVideoTap() {
    _toggleVideoPlayback();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      drawer: myDrawer(context),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Text(
                'Contactgegevens',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Center(
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              height: (MediaQuery.of(context).size.width - 10) * (9 / 16),
              child: _videoPlayerController.value.isInitialized
                  ? GestureDetector(
                      onTap: _handleVideoTap,
                      child: AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: Stack(
                          children: [
                            VideoPlayer(_videoPlayerController),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(_isPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow),
                                    onPressed: _toggleVideoPlayback,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.stop),
                                    onPressed: _stopVideoPlayback,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
