import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = 'Flutterサンプル';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(
          title: this.title,
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({title: 'Flutter Demo'}) : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// データ用クラス
class Data {
  String _name;
  int _price;
  Data(this._name, this._price): super();

  @override
  String toString() {
    return _name + ':' + _price.toString() + '円';
  }
}

class _MyHomePageState extends State<MyHomePage> {

  static final _data = [
    Data('Apple',200),
    Data('Orange', 150),
    Data('Peach', 300)
  ];
  Data _item = _data[0];

  void _setData() {
    setState(() {
      _item = (_data..shuffle()).first; // カスケード記法（複数のメソッドをつなげて1行で処理する）
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set data'),
      ),
      body: Text(
        _item.toString(),
        style: TextStyle(fontSize: 32.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setData,
        tooltip: 'set message.',
        child: Icon(Icons.star),
      ),
    );
  }
}