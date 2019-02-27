import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:'flutter demo',
      home: new HomePage(title:'demo home page')
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage({Key key , this.title}):super(key:key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomePage>{
  int _counter=0;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title:new Text(widget.title)),
      body:new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',//绑定计数器的值
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),

      ),
      floatingActionButton:new FloatingActionButton(
        onPressed:_increment,
      child:new Icon(Icons.add),
    )
    );
  }
}