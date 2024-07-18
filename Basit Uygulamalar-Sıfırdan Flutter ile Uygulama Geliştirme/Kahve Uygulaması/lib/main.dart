import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 200,
            alignment: Alignment.center, // metni container içinde ortalar
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(16.0),
            ),
            margin: EdgeInsets.all(100), // diğerleriyle arasındaki mesafe
            padding: EdgeInsets.all(10), // text ve container arası mesafe
            child: Transform(
              child: Text("Container Exercise"),
              transform: Matrix4.rotationZ(0.5),
              alignment: FractionalOffset.center, // merkezden dönmesini sağlar
            ),
          ),
        ),
      ),
    );
  }
}
