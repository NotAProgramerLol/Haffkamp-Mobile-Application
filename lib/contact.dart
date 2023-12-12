import 'package:flutter/material.dart';
import 'package:haffkamp/app_drawer.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      drawer: myDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ContactList(),
            SizedBox(height: 16),
            OpeningTimes(),
            SizedBox(height: 16),
            AddressBlock(
              address: 'Noordeindseweg 334, 2651 LM Berkel en Rodenrijs',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactItem(
            name: 'Dennis Blok',
            phoneNumber: '+31 651826797',
            email: 'Dennis@haffkamp.eu',
          ),
          ContactItem(
            name: 'Jan Glotzbach',
            phoneNumber: '+31 653171910',
            email: 'jan@haffkamp.eu',
          ),
          ContactItem(
            name: 'Algemeen',
            phoneNumber: '+31 010 316 6999',
            email: 'RandstadCampers@haffkamp.eu',
          ),
          // Add more ContactItem widgets as needed
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String email;

  const ContactItem({
    required this.name,
    required this.phoneNumber,
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Naam: $name',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 4),
        Text(
          'Telefoonnummer: $phoneNumber',
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(height: 4),
        Text(
          'Email: $email',
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class OpeningTimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Openingstijden',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Text('Maandag: 10:00 - 17:00'),
        Text('Dinsdag: 10:00 - 17:00'),
        Text('Woensdag: 10:00 - 17:00'),
        Text('Donderdag: 10:00 - 17:00'),
        Text('Vrijdag: 10:00 - 17:00'),
        Text('Zaterdag: 10:00 - 17:00'),
        Text('Zondag: Gesloten'),
        SizedBox(height: 16),
      ],
    );
  }
}

class AddressBlock extends StatelessWidget {
  final String address;

  const AddressBlock({
    required this.address,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Adres',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Text(
          address,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}