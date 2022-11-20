
import 'package:flutter/material.dart';

import '../assets/icons.dart';
import '../models/pokemons_list.dart';

class PokemonCard extends StatelessWidget {

  const PokemonCard({
    Key? key,
    required this.onePokemonModel,
    required this.onTap,
    required this.onRoute
  }) : super(key: key);

  final OnePokemonModel onePokemonModel;
  final Function(OnePokemonModel) onTap;
  final Function(String url) onRoute;

  @override
  Widget build(BuildContext context) {
    bool isLiked = onePokemonModel.isLiked;
    String buttonText = isLiked ? "DISLIKE" :"LIKE";
    return GestureDetector(
      onTap: () {
        onRoute(onePokemonModel.url);
      },
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),
          side: BorderSide(width: 1, color: Colors.grey),
        ),
        child: Column(
          children: [
            Image.network(onePokemonModel.imageUrl),
            Text(onePokemonModel.name),
            Row(children: [
              const Spacer(flex: 1,),
              OutlinedButton(
                  onPressed: () { onTap(onePokemonModel); },
                  child: Row(
                    children: [
                      Text(buttonText),
                      !isLiked ? const Icon(MyFlutterApp.heart) : Container()
                    ],
                  )
              ),
              const Spacer(flex: 1,)
            ],)

          ],
        ),
      ),
    );
  }
}