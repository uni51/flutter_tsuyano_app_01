import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body:
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text(
              "One",
              style: TextStyle(fontSize:32.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"),
            ),
            Text(
              "Two",
              style: TextStyle(fontSize:32.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"),
            ),
            Text(
              "Three",
              style: TextStyle(fontSize:32.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"),
            )
          ]
      ),
    );
  }
}