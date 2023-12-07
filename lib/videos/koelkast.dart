import 'package:flutter/material.dart';
import 'package:haffkamp/app_drawer.dart';

class Koelkast extends StatelessWidget {
  const Koelkast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      drawer: myDrawer(context),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Koelkast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Center(
              child: Text('This is the video Koelkast screen.'),
            ),
          ),
        ],
      ),
    );
  }
}
