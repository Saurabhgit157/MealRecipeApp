import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealrecipeapp/screens/categories_screen.dart';
class MealRecipeApp extends StatelessWidget {
  const MealRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Recipe App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),

      ),
      home: const CategoriesScreen(),

    );
  }
}
