import 'package:flutter/material.dart';
import 'package:mealrecipeapp/models/meal.dart';

class MealsScreen extends StatelessWidget{
  final List<Meal> meals;
  final String title;
  const MealsScreen({super.key,required this.meals,required this.title});


  @override
  Widget build(BuildContext context)
  {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),]
    ),
    );
    //
    if(meals.isNotEmpty)
      {
        content = ListView.builder(
          itemCount: meals.length,
          itemBuilder : (context,index)
            {
              return ListTile(
                title : Text(
                  meals[index].title,
                  style: const TextStyle(color : Colors.white),
                ),
              );
            }
        );
      }

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body : content ,
    );
  }




}