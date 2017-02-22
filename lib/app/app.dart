import 'package:exmaple_app_flutter/app/ui/bottom_navigation_view.dart';
import 'package:exmaple_app_flutter/app/ui/recipes_list_view.dart';
import 'package:flutter/material.dart';

final _kThemeDataRoot = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.red
);

class CookingApp extends StatefulWidget {

  @override
  CookingAppState createState() => new CookingAppState();

}

class CookingAppState extends State<CookingApp> {

  // final TargetPlatform _kPlatform = defaultTargetPlatform;

  Widget _home;

  @override
  void initState() {
    super.initState();
    
    _home = new Scaffold(
        appBar: new AppBar(
            centerTitle: false,
            title: new Text("Cooking Mama")
        ),
        body: new RecipesScrollListView(),
        bottomNavigationBar: new BottomNavigationView()
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Cooking Mama",
      theme: _kThemeDataRoot,
      home: _home
    );
  }

}

