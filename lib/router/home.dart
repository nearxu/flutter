import 'package:flutter/material.dart';
import 'package:flutter_app1/router/article.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    new HomePage('home'),
    new PlaceholderWidget('profile'),
  ];
  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index){
      setState(() {
        _currentIndex = index;
      });
    }
    // TODO: implement build
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar:new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(icon: new Icon(Icons.home),title:new Text('HOme')),
            new BottomNavigationBarItem(icon: new Icon(Icons.person),title:new Text('Profile'))
          ]),
    );
  }

}

class PlaceholderWidget extends StatelessWidget{
  final String text;
  PlaceholderWidget(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text(text),
    );
  }
}

class HomePage extends StatelessWidget{
  final String text;
  HomePage(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Center(
          child: new RaisedButton(
            child: new Text('Launch second screen'),
            onPressed:null
          ),
        ),
    );
  }
}