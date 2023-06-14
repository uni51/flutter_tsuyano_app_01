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

            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed:buttonPressed,
                    child: const Text(
                      "tap me!",
                      style: TextStyle(fontSize:32.0,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    )
                )
            ),
            

          ],
        ),
      ),
    );
  }

  void buttonPressed(){
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Hello!"),
          content: const Text("This is sample."),
          actions: <Widget>[
            TextButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.pop<String>(context, 'Cancel')
            ),
            TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.pop<String>(context, 'OK')
            )
          ],
        )
    ).then<void>((value) => resultAlert(value));
  }

  void resultAlert(String value) {
    setState((){
      _message = 'selected: $value';
    });
  }
}