import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/widget/poke_information.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeLogoUrl = "images/logo.png";
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              pokemon.name.toString() +
                  "                  " +
                  "#" +
                  pokemon.id.toString(),
              style: Sabitler.pokeYazi3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Chip(
                label: Text(
              pokemon.type?.join(",") ?? "",
              style: Sabitler.pokeYazi2,
            )),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8,bottom: 50),
                child: Align(alignment: Alignment.topRight,child: Image.asset(pokeLogoUrl,height: 100,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: PokeInformation(pokemon: pokemon)),
              ),
              Center(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? "",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(color: Colors.red),
                  ),
                ),
              ),
              
            ],
          ),
        ],
      )),
    );
  }
}
