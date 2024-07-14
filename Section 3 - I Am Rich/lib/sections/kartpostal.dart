import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        appBar: AppBar(
          title: Center(
            child: Text("Mutlu Bayramlar"),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaZ7OUccqxPXPaj4ZGO5E84Bi37oM-UMpxTw&s')
          ),
        ),
      ),
    ),
  );
}
