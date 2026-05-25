import 'package:flutter/material.dart';
import 'package:mealrecipeapp/data/dummy_data.dart';

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
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: category.color,
                ),
                child: Text(
                  category.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
              )

          ],

        )


    );


  }
}