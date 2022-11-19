// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:mobx/mobx.dart';

import '../models/pokemons_list.dart';
import '../network/pokemon_service.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {

  // Private

  @observable
  bool _isLoading = false;

  @observable
  List<OnePokemonModel> _pokemons = [];

  @observable
  PokemonList? _lastLoadedList;

  @computed
  String? get _nextPageUrl => _lastLoadedList?.next;

  @computed
  bool get _isLastPageLoaded => _lastLoadedList?.next == null && _lastLoadedList != null;

  // Public

  @computed
  bool get isLoading => _isLoading;

  @computed
  List<OnePokemonModel> get units => _pokemons;

  @action
  Future<void> loadPokemons() async {
    if (_isLoading || _isLastPageLoaded) {
      return;
    }
    _isLoading = true;

    if (_nextPageUrl != null) {
      _lastLoadedList = await PokemonService.shared
          .getPokemonListFromUrl(nextPageUrl: _nextPageUrl!);
    } else {
      _lastLoadedList = await PokemonService.shared.getPokemonList();
    }

    var pokemons = _lastLoadedList?.result ?? [];

    for (var pokemon in pokemons) {
      var model = await PokemonService.shared.getPokemonDetails(url: pokemon.url);
      pokemon.imageUrl = model.frontDefault;
    }

    _pokemons += pokemons;

    _isLoading = false;
  }
}
