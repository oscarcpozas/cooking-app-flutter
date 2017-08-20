import 'package:exmaple_app_flutter/app/data/recipe_data.dart';
import 'package:exmaple_app_flutter/app/data/recipe_data_impl.dart';
import 'package:exmaple_app_flutter/app/data/recipe_data_mock.dart';

enum Flavor {
  MOCK,
  PROD,
  DEBUG
}

class Injector {

  static final Injector _singleton = new Injector._internal();
  static Flavor _flavor;

  static configureFlavor(Flavor flavor) {
    _flavor = flavor;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  RecipeRepository get recipeRepository {
    switch (_flavor) {
      case Flavor.MOCK:
        return new MockRecipeRepository();
        break;
      default:
        return new RemoteRecipeRepository();
    }
  }

}