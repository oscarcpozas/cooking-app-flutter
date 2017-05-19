import 'package:exmaple_app_flutter/app/data/recipe_data.dart';
import 'package:exmaple_app_flutter/app/injection/injector.dart';

abstract class RecipeListViewContract {
  void setPresenter(RecipeListPresenter presenter);
  void onLoadRecipesComplete(List<Recipe> recipes);
  void onLoadRecipesError();
}

abstract class RecipeListPresenterContract {
  void loadRecipes();
}

class RecipeListPresenter implements RecipeListPresenterContract {

  RecipeListViewContract _view;
  RecipeRepository _repository;

  RecipeListPresenter(this._view) {
    _repository = new Injector().recipeRepository;
    _view.setPresenter(this);
  }

  @override
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