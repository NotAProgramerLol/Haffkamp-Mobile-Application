import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'info.dart';
import 'handleidingen.dart';
import 'videos.dart';
import 'campers.dart';
import 'contact.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: SafeArea(
        child: Column(
      children: [
        ListTile(
          dense: false,
          title: const Text("Home Page"),
          leading: const Icon(Icons.home),
          onTap: () {
            Get.toNamed('/');
          },
        ),
        ListTile(
          dense: false,
          title: const Text("Algemene info"),
          leading: const Icon(Icons.info),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Info(),
              ),
            );
          },
        ),
        ListTile(
          dense: false,
          title: const Text("Handleidingen"),
          leading: const Icon(Icons.library_books),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Handleidingen(),
              ),
            );
          },
        ),
        ListTile(
          dense: false,
          title: const Text("Videos"),
          leading: const Icon(Icons.video_library),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Videos(),
              ),
            );
          },
        ),
        ListTile(
          dense: false,
          title: const Text("Campers"),
          leading: const Icon(Icons.car_rental),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Campers(),
              ),
            );
          },
        ),
        ListTile(
          dense: false,
          title: const Text("Contact"),
          leading: const Icon(Icons.contact_support),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Contact(),
              ),
            );
          },
        ),
      ],
    )),
  );
}
