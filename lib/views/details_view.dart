import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/details_store.dart';

class PokemonDetailsView extends StatefulWidget {
  const PokemonDetailsView({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  State<PokemonDetailsView> createState() => _PokemonDetailsViewState();
}

class _PokemonDetailsViewState extends State<PokemonDetailsView> {
  // Store

  final DetailsStore store = DetailsStore();

  // Lifecycle

  @override
  void initState() {
    store.viewIsReady(widget.url);
  }

  // Build UI

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.black, //change your color here
              ),
              title: Text(store.model?.name ?? ""),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            body: store.model != null
                ? Column(
                    children: [
                      Row(
                        children: [
                          Image.network(store.model!.frontDefault),
                          Image.network(store.model!.backDefault)
                        ],
                      )
                    ],
                  )
                : Container()
        )
    );
  }
}
