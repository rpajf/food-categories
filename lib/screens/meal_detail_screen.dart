import 'package:flutter/material.dart';
import 'package:food_category/models/meal.dart';

class MealDetailScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Column(children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'ingredientes',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: 275,
            height: 200,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all( width: 1.2,color: Colors.grey),
              
              borderRadius: BorderRadius.circular(10)
            ),
            child: ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (cntxt, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15
                      ),
                      child: Text(meal.ingredients[index]),
                    ),
                    color: Theme.of(context).accentColor,
                  );
                }),
          )
        ]));
  }
}
