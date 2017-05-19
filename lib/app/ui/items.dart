import 'package:exmaple_app_flutter/app/data/recipe_data.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {

  final Recipe _recipe;
  final ScaffoldState _parentView;

  RecipeItem(this._recipe, this._parentView);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      new SizedBox(
          width: 800.0, height: 200.0,
          child: new Image.network(
              _recipe.imageURL
          )
      ),
      new Padding(
          padding: new EdgeInsets.only(
              left: 10.0, top: 10.0, bottom: 5.0
          ),
          child: new Text(
              _recipe.name,
              maxLines: 1
          )
      ),
      new SizedBox(
          child: new Align(
              alignment: FractionalOffset.bottomRight,
              child: new FlatButton(
                  child: new Text("Save in Favorites"),
                  onPressed: () {
                    print("heyyy");
                    _parentView.showSnackBar(
                      new SnackBar(
                        content: new Text("This recipe is saved in Favorites")
                      )
                    );

                  }
              )
          )
      )
    ];

    return new Padding(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
            elevation: 3.0,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _widgets
            )
        )
    );
  }

}