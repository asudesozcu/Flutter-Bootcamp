import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text("I Am Rich"),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS1DO64OV66NLpv4z-g4iejqXdznZvgDY1FaYivYdOvBjIas0QsbwCkw_rN-4hPb8W_qCR5d3SRd-3p5tlX1EsfCkaxr_ooiFbUeeLHtdbqbM7lqISwoyXhvw&usqp=CAE'),
          ),
        ),
      ),
    ),
  );
}
