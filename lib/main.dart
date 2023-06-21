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
        canvasColor: const Color(0xFFfafafa),
      ),
      home: FirstScreen(),
    );
  }
}

// １つ目のスクリーン
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Container(
          child: const Text('Home Screen',
              style: const TextStyle(fontSize: 32.0)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home, size:32),
          ),
          BottomNavigationBarItem(
            label: 'next',
            icon: Icon(Icons.navigate_next, size:32),
          ),
        ],
        onTap: (int value) {
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SecondScreen()),
            );
          }
        },
      ),
    );
  }
}

// ２つ目のスクリーン
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next"),
      ),
      body: const Center(
        child: Text('Next Screen',
            style:TextStyle(fontSize: 32.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'prev',
            icon: Icon(Icons.navigate_before, size:32),
          ),
          BottomNavigationBarItem(
            label: '?',
            icon: Icon(Icons.android, size:32),
          ),
        ],
        onTap: (int value) {
          if (value == 0) Navigator.pop(context);
        },
      ),
    );
  }
}