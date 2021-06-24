import 'package:flutter/material.dart';

import './screens/categories_meals_screen.dart';
import './screens/categories_screen.dart';
import './utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 250, 209, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6:
                  TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'))),
      routes: {
        AppRoutes.HOME: (cntxt) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (cntxt) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (cntxt) => MealDetailScren(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/route-error') {
      //     return null;
      //   } else if (settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return CategoriesScreen();
      //     });
      //   }
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return CategoriesScreen();
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
        backgroundColor: Colors.redAccent[100],
      ),
      body: Center(
        child: Text('Navegar é preciso!!'),
      ),
    );
  }
}
