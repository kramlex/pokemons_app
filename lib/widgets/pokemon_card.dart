import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {

  const PokemonCard({
    Key? key,
    required this.name,
    required this.imageUrl
  }) : super(key: key);

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(10)
        ),
        side: BorderSide(width: 1, color: Colors.grey),
      ),
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(name),
          OutlinedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Text("LIKE"),
                  Icon(Icons.heart_broken_sharp)
                ],
              )
          )
        ],
      ),
    );
  }
}