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

class YemekSayfasi extends StatelessWidget {
  //staless widget sayfada değişim yapmaz.
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1, //kaç oran almasını söyler.
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  corbaNo++;
                  print("şu andaki çorba no: $corbaNo");
                },
                child: Image.asset("images/corba_${corbaNo}.jpg"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  yemekNo++;
                  print("şu andaki yemek no: $yemekNo");
                },
                child: Image.asset("images/yemek_${yemekNo}.jpg"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  tatliNo++;
                  print("şu andaki tatlı no: $tatliNo");
                },
                child: Image.asset("images/tatli_${tatliNo}.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
