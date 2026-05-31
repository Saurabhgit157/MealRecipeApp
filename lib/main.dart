import 'package:flutter/material.dart';
import 'package:mealrecipeapp/app.dart';
import 'package:provider/provider.dart';
import 'package:mealrecipeapp/favorites_providers.dart';

void main() {
  runApp(
    // 1. Humne poori app ko Provider se lapetna
    ChangeNotifierProvider(
      //caunsa brain provider use krna h
      create: (context) => FavouritesProvider(),
      child: const MealRecipeApp(),
    )
  );
}

