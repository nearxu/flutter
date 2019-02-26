import 'package:flutter/material.dart';

class Bottom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BottomState()
}

class Item{
  const Item({this.title,this.icon});
  final String title;
  final IconData icon;
}

const List<Item> items = const <Item>[
  const Item(title: 'CAR', icon: Icons.directions_car),
  const Item(title: 'BICYCLE', icon: Icons.directions_bike),
  const Item(title: 'BOAT', icon: Icons.directions_boat),
  const Item(title: 'BUS', icon: Icons.directions_bus),
  const Item(title: 'TRAIN', icon: Icons.directions_railway),
  const Item(title: 'WALK', icon: Icons.directions_walk),
]

class BottomState extends State<Bottom>{
  final _bottomNavigationColor = Colors.blue;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'HOME',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'PAGES',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'AIRPLAY',
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}