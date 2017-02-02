import 'dart:async';

class Recipe {

  final int recipeID;
  final String name;
  final String category;
  final String imageURL;

  const Recipe({this.recipeID, this.name, this.category, this.imageURL});

  Recipe.fromMap(Map<String, dynamic>  map) :
        recipeID = 2,
        name = "${map['title']}",
        category = "${map['publisher']}",
        imageURL = "${map['image_url']}";

}

abstract class RecipeRepository {
  Future<List<Recipe>> fetch();
}

class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  String toString() {
    return "Exception: $_message";
  }
}