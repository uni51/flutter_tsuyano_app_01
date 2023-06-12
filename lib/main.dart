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
  static var _selected = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                _message,
                style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10.0),
            ),

            DropdownButton<String>(
              onChanged: popupSelected,
              value: _selected,
              style: const TextStyle(color:Colors.black,
                  fontSize:28.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),

              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(value: 'One',
                    child: Text('One')),
                DropdownMenuItem<String>(value: 'Two',
                    child: Text('Two')),
                DropdownMenuItem<String>(value: 'Three',
                    child: Text('Three')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void popupSelected(String? value){
    setState(() {
      _selected = value ?? 'not selected...';
      _message = 'select: $_selected';
    });
  }
}