// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on _MainStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_MainStore.isLoading'))
      .value;
  Computed<String?>? _$_nextPageUrlComputed;

  @override
  String? get _nextPageUrl =>
      (_$_nextPageUrlComputed ??= Computed<String?>(() => super._nextPageUrl,
              name: '_MainStore._nextPageUrl'))
          .value;
  Computed<bool>? _$_isLastPageLoadedComputed;

  @override
  bool get _isLastPageLoaded => (_$_isLastPageLoadedComputed ??= Computed<bool>(
          () => super._isLastPageLoaded,
          name: '_MainStore._isLastPageLoaded'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_MainStore._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_pokemonsAtom =
      Atom(name: '_MainStore._pokemons', context: context);

  @override
  List<OnePokemonModel> get _pokemons {
    _$_pokemonsAtom.reportRead();
    return super._pokemons;
  }

  @override
  set _pokemons(List<OnePokemonModel> value) {
    _$_pokemonsAtom.reportWrite(value, super._pokemons, () {
      super._pokemons = value;
    });
  }

  late final _$_lastLoadedListAtom =
      Atom(name: '_MainStore._lastLoadedList', context: context);

  @override
  PokemonList? get _lastLoadedList {
    _$_lastLoadedListAtom.reportRead();
    return super._lastLoadedList;
  }

  @override
  set _lastLoadedList(PokemonList? value) {
    _$_lastLoadedListAtom.reportWrite(value, super._lastLoadedList, () {
      super._lastLoadedList = value;
    });
  }

  late final _$loadPokemonsAsyncAction =
      AsyncAction('_MainStore.loadPokemons', context: context);

  @override
  Future<void> loadPokemons() {
    return _$loadPokemonsAsyncAction.run(() => super.loadPokemons());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
