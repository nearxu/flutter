import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
          body: Center(
        //     child: Text(
        //   'Hello JSPang  ,非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程。',
        //   textAlign: TextAlign.left,
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 1,
        //   style: TextStyle(
        //     fontSize: 25.0,
        //     color: Color.fromARGB(255, 255, 150, 150),
        //     decoration: TextDecoration.underline,
        //     decorationStyle: TextDecorationStyle.solid,
        //   ),
        // )),
        child: new Image.network(
          'http://jspang.com/static/myimg/blogtouxiang.jpg',
          scale: 1.0,
          color: Colors.greenAccent,
          colorBlendMode: BlendMode.darken,
        ),
      )),
    );
  }
}
