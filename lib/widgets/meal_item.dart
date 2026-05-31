import 'package:flutter/material.dart';
import 'package:mealrecipeapp/screens/meals_screen.dart';
import 'package:mealrecipeapp/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:mealrecipeapp/screens/meal_details.dart';



class MealItem extends StatelessWidget{
  const MealItem({super.key,required this.meal});

  final Meal meal;

  //getter to make compexity
  String get complexityTest {
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }

  //getter to make affordability
  String get AffordabilityText{
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MealDetailsScreen(
                meal:meal,
              )
            )
          );

        },

        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.schedule, size: 17, color: Colors.white),
                        const SizedBox(width: 6),
                        Text('${meal.duration} min', style: const TextStyle(color: Colors.white)),
                        const SizedBox(width: 12),
                        const Icon(Icons.work, size: 17, color: Colors.white),
                        const SizedBox(width: 6),
                        Text(complexityTest, style: const TextStyle(color: Colors.white)),
                        const SizedBox(width: 12),
                        const Icon(Icons.attach_money, size: 17, color: Colors.white),
                        const SizedBox(width: 6),
                        Text(AffordabilityText, style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




