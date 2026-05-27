import 'package:flutter/material.dart';
import 'package:mealrecipeapp/data/dummy_data.dart';
import 'package:mealrecipeapp/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          
          title: const Text('Meal Recipe App',style: TextStyle(color: Colors.white),),
          backgroundColor : Colors.black ,
          centerTitle: true,
        ),
        body: GridView(
          gridDelegate : const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2 ,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing:20,
          ),
          children: [
            for(final category in dummyCategories)
              CategoryGridItem(category: category),

          ],

        ),


    );


  }
}