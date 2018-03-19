import 'dart:async';
import 'dart:convert';
import 'package:exmaple_app_flutter/app/data/recipe_data.dart';
import 'package:flutter/services.dart';

class RemoteRecipeRepository implements RecipeRepository {

  static const _apiKEY = "e43509260e518431d4ebf809b0a4cd1f"; // Paste here your API Key
  static const _apiURL = "http://food2fork.com/api/search?key=" + _apiKEY;

  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<List<Recipe>> fetch() async {
    var clientHttp = createHttpClient();
    var response = await clientHttp.get(_apiURL);

    final String jsonBody = response.body;
    final statusCode = response.statusCode;

    if(statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      throw new FetchDataException("Error while getting contacts [StatusCode:$statusCode, Error:$response]");
    }

    final recipesContainer = _decoder.convert(jsonBody);
    final List recipeItems = recipesContainer['recipes'];

    return recipeItems.map((contactRaw) => new Recipe.fromMap(contactRaw))
        .toList();
  }

}