import 'package:flutter/material.dart';
import './two/state.dart';

void main() => runApp(MyApp());

class MyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:'flutter book',
      home:Scaffold(
        appBar: new AppBar(title:Text('welcome flutter!')),
        body:Center(child: Text('hello world'),)
      )
    );
  }
}