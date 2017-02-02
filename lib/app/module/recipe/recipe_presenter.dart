import 'package:example_app_flutter/app/data/recipe_data.dart';
import 'package:example_app_flutter/app/injection/injector.dart';

abstract class RecipeListViewContract {
  void onLoadRecipesComplete(List<Recipe> recipes);
  void onLoadRecipesError();
}

class RecipeListPresenter {

  RecipeListViewContract _view;
  RecipeRepository _repository;

  RecipeListPresenter(this._view) {
    _repository = new Injector().recipeRepository;
  }

  void loadRecipes() {
    assert(_view != null); // Check that view is not null

    _repository.fetch()
        .then((recipes) => _view.onLoadRecipesComplete(recipes))
        .catchError((onError) {
          print(onError);
          _view.onLoadRecipesError();
    });
  }

}