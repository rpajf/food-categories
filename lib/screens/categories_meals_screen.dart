import 'package:flutter/material.dart';
import 'package:food_category/models/category.dart';
import '../components/meal_item.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: categoryMeals.length,
              itemBuilder: (cntext, index) {
                return MealItem(categoryMeals[index]);
              })),
    );
  }
}
