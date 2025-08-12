import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}


class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
  }

  class _CounterScreenState extends State<CounterScreen> {
    int counter = 0;

    void increaseCounter(){
      setState(() {
        counter++;
      });
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefulwidget Demo'),
      ),
      body: Center(
        child: Text(
          'Counter: $counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increaseCounter,
        child: Icon(Icons.add),
      ),
    );

  }
  }

