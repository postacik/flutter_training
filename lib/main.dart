import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _label = "Hello World";

  void pressTimer() {
    print("pressed timer");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: pressTimer,
            ),
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: pressTimer,
            ),
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: pressTimer,
            ),
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: pressTimer,
            ),
          ],
        ),
        body: Center(
          child: Text(
            _label,
            style: TextStyle(fontSize: 45.0, color: Colors.red),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { 
            setState(() {
              _label = "Pressed button";
            });
          },
          tooltip: 'Increment',
          child: Icon(Icons.phone_iphone),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
