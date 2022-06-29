import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/recipeApi.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "30", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "318770c29emsha34dbb9fbf82ae0p145ca9jsn19ab8447a5a0",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "false"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
