import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 80,
                    height: 80 * 3 / 4,
                    child: Image.asset("assets/images/image1.jpg"),
                  ),
                ),
                Expanded(
                    child: Text(
                  "Hello world 333333333 33333333333 33333333 33333333333",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                IconButton(
                  icon: Icon(Icons.access_alarm),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
