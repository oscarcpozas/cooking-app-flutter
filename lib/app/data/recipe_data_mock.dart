import 'dart:async';
import 'recipe_data.dart';

class MockRecipeRepository implements RecipeRepository{

  @override
  Future<List<Recipe>> fetch() {
    return new Future.value(staticRecipes);
  }

}

const staticRecipes = const <Recipe>[
  const Recipe(
    recipeID: 0001,
    name: "Sopa de caracol",
    category: "Sopas"
  ),
  const Recipe(
    recipeID: 0002,
    name: "Arroz con pollo",
    category: "Arroz"
  ),
  const Recipe(
    recipeID: 0003,
    name: "Tarta de queso",
    category: "Postres"
  )
];