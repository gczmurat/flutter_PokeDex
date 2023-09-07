import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/pages/detail_page.dart';
import 'package:flutter_pokedex/widget/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemon),));},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 40),
              child: Text(
                pokemon.name ?? "N/A",
                style: Sabitler.pokeYazi1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, right: 60),
              child: Chip(
                  label: Text(
                pokemon.type![0],
                style: Sabitler.pokeYazi2,
              )),
            ),
            Expanded(child: PokeImageAndBall(pokemon: pokemon)),
          ],
        ),
      ),
    );
  }
}
