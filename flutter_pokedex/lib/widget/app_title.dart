import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeLogoUrl = "images/logo.png";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Stack(
          children: [ Align(alignment: Alignment.topLeft,child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 5),
            child: Text("PokeDex",style: Sabitler.pokeBaslik,),
          )),
          Align(alignment: Alignment.topRight,child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(pokeLogoUrl,height: 100,),
          ))],
        ),
      ),
    );
  }
}
