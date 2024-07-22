import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'BUGUN NE YESEM',
              style: TextStyle(color: Colors.black),
            ), // titleTextStyle: TextStyle(color: Colors.black),
            centerTitle: true,
          ),
          body: Center(
            child: YemekSayfasi(),
          ),
        ),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  List<String> corbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuk Suyu",
    "Düğün",
    "Yoğurt"
  ];

  void yemeklerinHepsiniYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            //boyutlandırır
            flex: 1, //kaç oran almasını söyler.
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  setState(
                    () {
                      corbaNo = Random().nextInt(5) +
                          1; // Random().nextInt(5) bu bana 0dan 4e kadar döndürür.
                    },
                  );
                },
                child: Image.asset("images/corba_${corbaNo}.jpg"),
              ),
            ),
          ),
          Text(
            "${corbaAdlari[corbaNo - 1]} Çorbası",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
              height: 5,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    yemekNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset("images/yemek_${yemekNo}.jpg"),
              ),
            ),
          ),
          Text(
            "${yemekAdlari[yemekNo - 1]} Yemeği",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed:
                    yemeklerinHepsiniYenile, //yemeklerinHepsiniYenile() olarak kullanmama nedenimiz void olması
                child: Image.asset("images/tatli_${tatliNo}.jpg"),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
