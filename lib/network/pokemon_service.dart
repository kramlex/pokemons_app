import 'package:dio/dio.dart';

import '../models/pokemons.dart';
import '../models/pokemons_list.dart';

class PokemonService {

  static final shared = PokemonService();

  final Dio _dio = Dio(
    BaseOptions(baseUrl: "")
  );

  Future<PokemonList> getPokemonList() async {
    final response = await _dio.get(
      "https://pokeapi.co/api/v2/pokemon"
    );
    return PokemonList.fromApi(response.data);
  }

  Future<PokemonList> getPokemonListFromUrl({
    required String nextPageUrl
  }) async {
    final response = await _dio.get(
        nextPageUrl
    );
    return PokemonList.fromApi(response.data);
  }

  Future<PokemonModel> getPokemonDetails({required String url}) async {
    final response = await _dio.get(url);
    return PokemonModel.fromApi(response.data);
  }
}
