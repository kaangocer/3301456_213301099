import 'package:flutter/material.dart';
import 'package:healthylifecoach/models/recipeApi.dart';
import 'package:healthylifecoach/services/api.dart';
import 'package:healthylifecoach/widgets/card.dart';

class DunyaMutfagi extends StatefulWidget {
  @override
  _DunyaMutfagiState createState() => _DunyaMutfagiState();
}

class _DunyaMutfagiState extends State<DunyaMutfagi> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Dünya Mutfağı')
            ],
          ),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: _recipes[index].name,
                      thumbnailUrl: _recipes[index].images);
                },
              ));
  }
}
