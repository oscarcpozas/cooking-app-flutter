import 'dart:async';

class Recipe {

  final int recipeID;
  final String name;
  final String category;

  const Recipe({this.recipeID, this.name, this.category});

  Recipe.fromMap(Map<String, dynamic>  map) :
        recipeID = 2,
        name = "${map['title']}",
        category = "${map['publisher']}";

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