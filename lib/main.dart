import 'package:flutter/material.dart';
//import './layout/tabcard.dart';
// import './form/form.dart';
// import './layout/text.dart';
// import './layout/grad.dart';
import './data/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'navagater', routes: {
      '/': (BuildContext context) => new IndexApp(),
    });
  }
}
