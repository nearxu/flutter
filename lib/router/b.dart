
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
   void go(){
    Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new BPage())
    );
  }
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
            title:new Text('first page')
        ),
        body:new Center(
          child: new RaisedButton(onPressed: go,child: new Text('go to page b')),
        )
    );
  }
}

class BPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    void goBack(){
      Navigator.pop(context);
    }
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go back!'),
          onPressed: goBack,
        ),
      ),
    );
  }
}