enum Complexity { Simple, Medium, Hard }
enum Cost { Cheap, Fair, Expensive }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isVegan;
  final bool isLactoseFree;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.isGlutenFree,
    required this.ingredients,
    required this.isLactoseFree,
    required this.steps,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Médio';
      case Complexity.Hard:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }
  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return 'Barato';
      case Cost.Fair:
        return 'Justo';
      case Cost.Expensive:
        return 'Caro';
      default:
        return 'Custo Desconhecida';
    }
  }
}
