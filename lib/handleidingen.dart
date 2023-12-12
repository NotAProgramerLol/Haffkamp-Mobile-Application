import 'package:flutter/material.dart';
import 'package:haffkamp/app_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Handleidingen extends StatelessWidget {
  const Handleidingen({Key? key}) : super(key: key);

  static List<CardData> cardList = [
    CardData(title: 'RA242', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4142a/'),
    CardData(title: 'RB988', body: 'https://www.indelwebastomarine.com/int/products/product/show/bi-30/'),
    CardData(title: 'RBD279', body: 'opnieuw'),
    CardData(title: 'RBD90', body: 'https://www.gebruikershandleiding.com/Dometic-RC-10.4T.70/preview-handleiding-954630.html'),
    CardData(title: 'RBDH68', body: 'https://www.gebruikershandleiding.com/Dometic-RC-10.4T.70/preview-handleiding-954630.html'),
    CardData(title: 'RBE313', body: 'https://www.gebruikershandleiding.com/Dometic-RC-10.4T.70/preview-handleiding-954630.html'),
    CardData(title: 'RBE41', body: 'https://www.caravansplus.com.au/pdf/Vitrifrigo_manual_2%20.pdf'),
    CardData(title: 'RBE49', body: 'https://www.gebruikershandleiding.com/Dometic-RM5380/preview-handleiding-721911.html'),
    CardData(title: 'RCE05', body: 'opnieuw'),
    CardData(title: 'RCE32', body: 'https://www.youtube.com/watch?v=eFYjMZ5RBGQ'),
    CardData(title: 'RCE37', body: 'opnieuw'),
    CardData(title: 'RD31', body: 'opnieuw'),
    CardData(title: 'RDH278', body: 'opnieuw'),
    CardData(title: 'RE634', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4142e+/'),
    CardData(title: 'REH426', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4150a/'),
    CardData(title: 'REH45', body: 'Opnieuw'),
    CardData(title: 'REH550', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4141e+/'),
    CardData(title: 'REH72', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4142a/'),
    CardData(title: 'REH73', body: 'opnieuw'),
    CardData(title: 'REH770', body: 'opnieuw'),
    CardData(title: 'REH79', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4141e+/'),
    CardData(title: 'REH81', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4142e+/'),
    CardData(title: 'REH919', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n3142e+/'),
    CardData(title: 'REL150', body: 'opnieuw'),
    CardData(title: 'REL897', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n3142e+/'),
    CardData(title: 'RIH336', body: 'Opnieuw'),
    CardData(title: 'RIH32', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n3142e+/'),
    CardData(title: 'RIH346', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n4142e+/'),
    CardData(title: 'RIH97', body: 'https://www.pdfhandleiding.nl/handleiding/thetford-n3142e+/'),
    CardData(title: 'RQH60', body: 'opnieuw'),
    CardData(title: 'Rt@b01', body: 'https://www.gebruikershandleiding.com/Dometic-RM5310/preview-handleiding-721909.html'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Replace with your preferred color
        title: Image.asset(
          'assets/images/logo.png', // Replace with your logo image asset
          height: 40, // Adjust the height as needed
        ),
      ),
      drawer: myDrawer(context),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          final cardData = cardList[index];
          return CardWidget(
            title: cardData.title,
            body: cardData.body,
          );
        },
      ),
    );
  }
}

class CardData {
  final String title;
  final String body;

  CardData({
    required this.title,
    required this.body,
  });
}

class CardWidget extends StatelessWidget {
  final String title;
  final String body;

  const CardWidget({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (body.startsWith('http')) {
            launch(body);
          } else {
            // Do something else when tapping on the card (e.g., show a message)
          }
        },
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.green, // Replace with your preferred color
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white, // Replace with your preferred color
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: Colors.white, // Replace with your preferred color
                    ),
                  ],
                ),
              ),
              const Divider(),
              Text(body),
            ],
          ),
        ),
      ),
    );
  }
}