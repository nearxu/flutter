import 'package:flutter/material.dart';
import './reduxTodo/main1.dart';
void main() =>  runApp(new MaterialApp(
  home: new Landing(),
  routes: <String, WidgetBuilder>{
    '/page2': (BuildContext context) => new Page2(),
    '/page3': (BuildContext context) => new Page3(),
  },
));

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new LandingBody(),
      appBar: new AppBar(
        title: new Text('Welcome'),
        elevation: 0.0,
      ),
    );
  }
}


class LandingBody extends StatefulWidget {
  @override
  LandingBodyState createState() {
    return new LandingBodyState();
  }
}

class LandingBodyState extends State<LandingBody> {
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://image.freepik.com/free-vector/designer-s-office-flat-illustration_23-2147492101.jpg'),
                radius: 70.0),

            new Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: new IconButton(
                onPressed: (() => Navigator.of(context).pushNamed('/page2')),
                icon: new Icon(Icons.arrow_forward),
                iconSize: 60.0,
                color: Colors.pink[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final String name;
  Page2({this.name});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 2'),
        elevation: 0.0,
      ),
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://image.freepik.com/free-vector/business-person-cartoon-with-a-light-bulb_1207-283.jpg'),
                  radius: 70.0),
              new Padding(
                padding: const EdgeInsets.all(58.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        child: new Text('Home'),
                        onPressed: () => Navigator.of(context).pop()) ,
                    new RaisedButton(
                        child: new Text('Page 3'),
                        onPressed: () => Navigator.of(context).pushNamed('/page3')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 3'),
        elevation: 0.0,
      ),
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircleAvatar(
                  backgroundImage: new NetworkImage('https://image.freepik.com/free-vector/vector-illustration-of-a-mountain-landscape_1441-77.jpg'),
                  radius: 70.0),
              new Padding(
                padding: const EdgeInsets.all(58.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(child: new Text('Home'),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

