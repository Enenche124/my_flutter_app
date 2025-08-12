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

    void decreaseCounter(){
      setState((){
        counter--;
      });
    }

    void resetCounter(){
      setState(() {
        counter = 0;
    });
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefulwidget Demo'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increaseCounter,
                  child: Text('Increase'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decreaseCounter,
                  child: Text('Decrease'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: resetCounter,
                  child: Text('Reset'),
                ),
              ]
            )
          ]
        ),
         
        ),
      );

  }
  }

