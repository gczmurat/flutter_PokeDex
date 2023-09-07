import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeLogoUrl2 = "images/logo2.png";
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              pokeLogoUrl2,
              color: Colors.grey.shade300,
            )),
        Align(
            alignment: Alignment.bottomRight,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? "",
              placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red),
            ))
      ],
    );
  }
}
