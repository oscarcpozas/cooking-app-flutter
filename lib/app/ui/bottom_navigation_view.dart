import 'package:flutter/material.dart';

abstract class BottomNavigationStatus {

  void onTapChangeIndex(int position);

}

class BottomNavigationView extends StatefulWidget {

  BottomNavigationStatus listener;

  BottomNavigationView(this.listener);

  @override
  BottomNavigationState createState() => new BottomNavigationState(listener);

}

class BottomNavigationState extends State<BottomNavigationView> {

  BottomNavigationStatus _kTapListener;
  List<BottomNavigationBarItem> _kBottomNavigationItems;
  int _currentIndex = 0;

  BottomNavigationState(this._kTapListener);

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
          _kTapListener.onTapChangeIndex(index);
        });
      }
    );
  }

}