import 'package:flutter/material.dart';
//import './layout/tabcard.dart';
import './form/form.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'navagater',
        routes: {
          '/': (BuildContext context) => new FormApp(),
        }
    );
  }
}
