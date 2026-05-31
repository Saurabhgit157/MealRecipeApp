import 'package:flutter/material.dart';
import 'package:mealrecipeapp/models/meal.dart' ;

class FavouritesProvider extends ChangeNotifier{

  final List<Meal> _favouriteMeals = [] ;

  List<Meal> get favouriteMeals => _favouriteMeals;

  void toggleMealFavouriteStatus(Meal meal) {
    final isFavourite = _favouriteMeals.contains(meal);


    if (isFavourite) {
      _favouriteMeals.remove(meal);
    }
    else {
      _favouriteMeals.add(meal);
    }

    notifyListeners();
  }
}