import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, //her rowun arasının eşit olmasını sağladı
            children: [
              Container(
                height: 100, // width vermezsen tüm sırayı kapatır.
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // sarı ve kırmının arasını yaptı
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  )
                ],
              ),
              Container(height: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
