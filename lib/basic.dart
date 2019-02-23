import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // 重载build方法
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new CounterComponent(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  final bigFont = const TextStyle(fontSize:20);
  Widget build(BuildContext context) {
    return new Text('123456');
  }
}

//class Counter extends StatefulWidget{
//  @override
//  _CounterState createState() => new _CounterState();
//}
//class _CounterState extends State<Counter>{
//  int _counter = 0;
//  void _increment(){
//    setState(() {
//      _counter++;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Row(
//      children: <Widget>[
//        new RaisedButton(onPressed: _increment,child: new Text("add counter"),),
//        new Text('counter: $_counter')
//      ],
//    );
//  }
//}

class CounterDisplay extends StatelessWidget{
  CounterDisplay({this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('count: $count');
  }
}

class CounterIncrement extends StatelessWidget{
  CounterIncrement({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(onPressed: onPressed,child: new Text('increment fnction'),);
  }
}

class CounterComponent extends StatefulWidget{
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<CounterComponent>{
  int _counter = 0;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new CounterIncrement(onPressed: _increment,),
        new CounterDisplay(count: _counter,)
      ],
    );
  }
}

