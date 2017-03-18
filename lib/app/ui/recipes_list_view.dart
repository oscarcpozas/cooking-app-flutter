import 'package:exmaple_app_flutter/app/data/recipe_data.dart';
import 'package:exmaple_app_flutter/app/module/recipe/recipe_presenter.dart';
import 'package:exmaple_app_flutter/app/ui/items.dart';
import 'package:flutter/material.dart';

class RecipesScrollListView extends StatefulWidget {

  @override
  RecipesScrollListViewState createState() {
    RecipesScrollListViewState state = new RecipesScrollListViewState();
    new RecipeListPresenter(state);
    return state;
  }

}

class RecipesScrollListViewState extends State<RecipesScrollListView>
    implements RecipeListViewContract {

  static const String routeName = "/home";

  final _kHeightItem = 300.0;

  RecipeListPresenter _presenter;
  List<Recipe> _recipes;
  bool _isLoading;
  bool _isError = false;

  ScaffoldState _parentView;

  @override
  void setPresenter(RecipeListPresenter presenter) {
    _presenter = presenter;
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _presenter.loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;

    _parentView = Scaffold.of(context);

    if (_isLoading) {
      widget = new Center(
          child: new Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: new CircularProgressIndicator()
          )
      );
    } else {

      if(_isError || _recipes == null || _recipes.isEmpty ) {
        widget = new Center(
          child: new Text("Error fetching server data")
        );
      } else {
        widget = new ListView(
            itemExtent: _kHeightItem,
            children: _buildRecipesWidgetList()
        );
      }

    }

    return widget;
  }

  @override
  void onLoadRecipesComplete(List<Recipe> recipes) {
    setState(() {
      _recipes = recipes;
      _isLoading = false;
    });
  }


  @override
  void onLoadRecipesError() {
    setState(() {
      _isError = true;
    });
  }

  List<Widget> _buildRecipesWidgetList() {
    List<Widget> list = new List<Widget>();

    _recipes.forEach((recipe) => list.add(new RecipeItem(recipe, _parentView)));
    return list;
  }

}