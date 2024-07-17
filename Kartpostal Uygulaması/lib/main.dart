import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD7E0FF),
        appBar: AppBar(
          title: Center(
            child: Text(
                "Mutlu Bayramlar"), // centera almak için titleCenter: true da çalışırs
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/mutlu_bayramlar.jpg'), //image.Asset('images/mutlu_bayramlar.jpg')
          ),
        ),
      ),
    ),
  );
}
