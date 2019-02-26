import 'package:flutter/material.dart';

class AppRouter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('顶部tab切换'),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.directions_bike),),
              new Tab(icon: new Icon(Icons.directions_boat),)
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Center(child: new Text('自行车')),
            new Center(child: new Text('船')),
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('hello second');
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('hello home');
  }
}