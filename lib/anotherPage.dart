import 'package:flutter/material.dart';
import 'anotherPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        Scaffold(
      appBar: AppBar(
        title: Text('Playground App'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Welcome to the Playground App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ),
        ),
    );
  }
}