import 'package:example_app_flutter/app/data/recipe_data.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {

  final Recipe _recipe;

  RecipeItem(this._recipe);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
            elevation: 3,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox(
                      width: 800.0,
                      height: 200.0,
                      child: new Image.network(
                          _recipe.imageURL,
                          fit: ImageFit.fitWidth
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
                        child: new Text("Save in Favorites")
                      )
                    )
                  )
                ]
            )
        )
    );
  }

}