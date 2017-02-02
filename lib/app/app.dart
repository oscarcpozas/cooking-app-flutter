import 'package:example_app_flutter/app/ui/bottom_navigation_view.dart';
import 'package:example_app_flutter/app/ui/recipes_list_view.dart';
import 'package:flutter/foundation.dart';
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

  @override
  Widget build(BuildContext context) {
    Widget home = new Scaffold(
      appBar: new AppBar(
        centerTitle: false,
        title: new Text("Cooking Mama")
      ),
      body: new RecipesScrollListView(),
      bottomNavigationBar: new BottomNavigationView()
    );

    return new MaterialApp(
      title: "Cooking Mama",
      theme: _kThemeDataRoot,
      home: home
    );
  }

}