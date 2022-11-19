class PokemonList {
  PokemonList.fromApi(Map<String, dynamic> map)
      : result = (map["results"] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .map((e) => OnePokemonModel(name: e["name"], url: e["url"]))
        .toList(),
        next = map["next"],
        prev = map["prev"],
        count = map["count"];

  final List<OnePokemonModel> result;
  final String? next;
  final String? prev;
  final int count;
}

class OnePokemonModel {

  OnePokemonModel({
    required this.name,
    required this.url
  });

  late String imageUrl;
  final String name;
  final String url;
}