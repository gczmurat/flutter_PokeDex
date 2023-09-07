import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 483,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    "Name :   ${pokemon.name}",
                    style: Sabitler.pokeYazi1,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Height :   ${pokemon.height}",
                    style: Sabitler.pokeYazi1,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Weight :   ${pokemon.weight}",
                    style: Sabitler.pokeYazi1,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Spawn Time :   ${pokemon.spawnTime}",
                    style: Sabitler.pokeYazi1,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    width: 330,
                    child: Text(
                      "Weakness : ${pokemon.weaknesses}",
                      style: Sabitler.pokeYazi1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    width: 330,
                    child: Text(
                      "Pre Evolution :   ${pokemon.prevEvolution}",
                      style: Sabitler.pokeYazi1,overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    width: 330,
                    child: Text(
                      "Next Evolution: ${pokemon.nextEvolution}",
                      style: Sabitler.pokeYazi1,overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
