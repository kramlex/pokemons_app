import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/main_store.dart';
import '../widgets/pokemon_card.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();

}

class _MainViewState extends State<MainView> {
  final MainStore store = MainStore();

  @override
  void initState() {
    super.initState();
    store.loadPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Observer(
          builder: (_) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index / 2 >= store.units.length / 2 * 0.8) {
                store.loadPokemons();
              }
              return PokemonCard(
                name: store.units[index].name,
                imageUrl: store.units[index].imageUrl,
              );
            },
            itemCount: store.units.length,
          )),
    );
  }
}
