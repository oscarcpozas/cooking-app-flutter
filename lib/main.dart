import 'package:example_app_flutter/data/recipe_data.dart';
import 'package:example_app_flutter/injection/injector.dart';
import 'package:example_app_flutter/module/recipe/recipe_presenter.dart';
import 'package:example_app_flutter/ui/bottom_navigation_view.dart';
import 'package:flutter/material.dart';

void main() {
  Injector.configureFlavor(Flavor.PROD); // Select flavor to build
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Coocking mama")
        ),
        body: new RecipesList(),
        bottomNavigationBar: new BottomNavigationView()
      )
    );
  }
}

class RecipesList extends StatefulWidget {

  RecipesList({Key key}) : super(key: key);

  @override
  RecipesListState createState() => new RecipesListState();

}

class RecipesListState extends State<RecipesList> implements
    RecipeListViewContract {

  RecipeListPresenter _presenter;
  List<Recipe> _recipes;
  bool _isSearching;

  RecipesListState() {
    _presenter = new RecipeListPresenter(this);
  }

  @override
  void initState() {
    _isSearching = true;
    _presenter.loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;

    if (_isSearching) {
      widget = new Center(
          child: new Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: new CircularProgressIndicator()
          )
      );
    } else {
      widget = new MaterialList(
                type: MaterialListType.twoLine,
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: _buildRecipesList()
      );
    }

    return widget;
  }

  @override
  void onLoadRecipesComplete(List<Recipe> recipes) {
    setState(() {
      _recipes = recipes;
      _isSearching = false;
    });
  }

  @override
  void onLoadRecipesError() {
    setState(() {
      _isSearching = false;
    });
  }

  List<_RecipesListItem> _buildRecipesList() {
    return _recipes.map((contact) => new _RecipesListItem(contact))
        .toList();
  }

}

class _RecipesListItem extends ListItem {

  _RecipesListItem(Recipe recipe) :
        super(
          title : new Text(recipe.name),
          subtitle: new Text(recipe.category),
          leading: new CircleAvatar(
              child: new Text(recipe.name[0])
          )
      );

}