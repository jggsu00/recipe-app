// home_screen.dart - Displays a list of recipes
import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recipes = [
      {'name': 'Spaghetti Carbonara', 'details': 'Ingredients: Pasta, Eggs, Bacon, Cheese'},
      {'name': 'Chicken Curry', 'details': 'Ingredients: Chicken, Curry Paste, Coconut Milk'},
      {'name': 'Beef Stroganoff', 'details': 'Ingredients: Beef, Mushrooms, Sour Cream'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// details_screen.dart - Displays recipe details
class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(recipe['details']!),
      ),
    );
  }
}
