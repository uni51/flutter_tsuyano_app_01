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
  static var _message = 'ok.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            _message,
            style: const TextStyle(
              fontSize: 32.0
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(22.0),

            children: const <Widget>[
              Text('First item',
                style: TextStyle(fontSize: 24.0),
              ),
              Text('Second item',
                style: TextStyle(fontSize: 24.0),
              ),
              Text('Third item',
                style: TextStyle(fontSize: 24.0),
              ),
            ]
          )
        ],
      )
    );
  }
}