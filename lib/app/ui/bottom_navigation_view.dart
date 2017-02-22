import 'package:flutter/material.dart';

class BottomNavigationView extends StatefulWidget {

  @override
  BottomNavigationState createState() => new BottomNavigationState();

}

class BottomNavigationState extends State<BottomNavigationView> {

  List<BottomNavigationBarItem> _kBottomNavigationItems;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _kBottomNavigationItems = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text("Home")
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.favorite),
        title: new Text("Favorites")
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: _kBottomNavigationItems,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;

        });
      }
    );
  }

}