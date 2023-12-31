import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'info.dart';
import 'handleidingen.dart';
import 'videos/adblue.dart';
import 'videos/truma.dart';
import 'videos/stroom.dart';
import 'videos/koelkast.dart';
import 'videos/luifel.dart';
import 'videos/fietsendrager.dart';
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
        ExpansionTile(
          title: const Text("Videos"),
          leading: const Icon(Icons.video_library),
          children: [
            ListTile(
              title: const Text("Adblue"),
              leading: const Icon(Icons.local_gas_station),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Adblue(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Truma"),
              leading: const Icon(Icons.touch_app),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Truma(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Stroom"),
              leading: const Icon(Icons.electric_bolt),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Stroom(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Koelkast"),
              leading: const Icon(Icons.kitchen),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Koelkast(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Luifel"),
              leading: const Icon(Icons.terrain),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Luifel(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Fietsendrager"),
              leading: const Icon(Icons.pedal_bike),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Fietsendrager(),
                  ),
                );
              },
            ),
          ],
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
