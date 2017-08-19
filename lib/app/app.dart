import 'package:exmaple_app_flutter/app/module/recipe/recipe_presenter.dart';
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

class CookingAppState extends State<CookingApp> implements BottomNavigationStatus {

  // final TargetPlatform _kPlatform = defaultTargetPlatform;

  Widget _home;
  Widget _bodyContent;

  @override
  void initState() {
    super.initState();

    _bodyContent = new RecipesScrollListView();

    _home = new Scaffold(
        appBar: new AppBar(
            centerTitle: false,
            title: new Text("Cooking Mama")
        ),
        body: _bodyContent,
        bottomNavigationBar: new BottomNavigationView(this)
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

  @override
  void onTapChangeIndex(int position) {
    setState(() {
      if(position == 0) {
        _bodyContent = new RecipesScrollListView();
      } else {
        _bodyContent = new RecipesScrollListView();
      }
    });
  }
}

