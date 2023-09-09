import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getPokemonData() async {
    try {
      List<PokemonModel> _list = [];
      final response = await Dio().get(_url);

      if (response.statusCode == 200) {
        final pokeList = jsonDecode(response.data)["pokemon"];
        if (pokeList is List) {
          _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
        }
      }

      return _list;
    } catch (e) {
      // Hata durumunda burada hata yönetimini gerçekleştirin
      print("Hata oluştu: $e");
      return [];
    }
  }
}