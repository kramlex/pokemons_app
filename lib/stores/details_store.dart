// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:mobx/mobx.dart';

import '../models/pokemons.dart';
import '../network/pokemon_service.dart';

part 'details_store.g.dart';

class DetailsStore = _DetailsStore with _$DetailsStore;

abstract class _DetailsStore with Store {

  // Private

  @observable
  PokemonModel? _model;

  @observable
  bool _isLoading = false;

  // Public

  @computed
  PokemonModel? get model => _model;

  @computed
  bool get isLoading => _isLoading;

  @action
  Future<void> viewIsReady(String url) async {
    _isLoading = true;
    _model = await PokemonService.shared.getPokemonDetails(url: url);
    _isLoading = false;
  }
}
