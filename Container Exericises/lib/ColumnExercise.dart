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
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
                height: 20,
              ),
              Container(
                height: 100,
                width: 200,
                alignment: Alignment.center,
                child: Text("C1"),
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.blueGrey,
                child: Text("C2"),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Container(
                height: 100,
                width: 200,
                alignment: Alignment.center,
                color: Colors.lime,
                child: Text("C3"),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.deepPurpleAccent,
                    width: 20,
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
