import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vamos cozinhar?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(category);
          }).toList()),
    );
  }
}
