import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/domain/planet_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlanetsNotifier extends StateNotifier<AsyncValue<List<PlanetEntity>>> {
  final Ref ref;
  final PlanetUseCase useCase;

  late SharedPreferences prefs;

  PlanetsNotifier(this.ref, this.useCase) : super(const AsyncValue.loading()) {
    loadPlanets();
    startPreferences();
  }

  final List<PlanetEntity> truthSource = [];

  Future<void> startPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  void saveFavorite(PlanetEntity planet) async {
    final List<String> favorites = prefs.getStringList(FAVORITES_PLANETS)??[];
    bool add=false;
    if(favorites.contains(planet.name)){
      favorites.remove(planet.name);
    }else{
      favorites.add(planet.name);
      add=true;
    }
    await prefs.setStringList(FAVORITES_PLANETS, favorites);
    truthSource.firstWhere((element) => element.name == planet.name).isFavorite = add;
    ref.notifyListeners();
  }

  void setFavorites(){
    final List<String> favorites = prefs.getStringList(FAVORITES_PLANETS)??[];
    if(truthSource.isNotEmpty && favorites.isNotEmpty){
      for (var element in truthSource) {
        if(favorites.contains(element.name)){
          element.isFavorite = true;
        }
      }
    }
  }

  Future<void> loadPlanets() async {
    state = const AsyncValue.loading();
    try {
      var planets = await useCase();
      truthSource.addAll(planets);
      setFavorites();
      state = AsyncValue.data(truthSource);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  void onSearchUser(String query) {
    if (query.isNotEmpty) {
      final result =
          truthSource
              .where((element) {
                return element.name.toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.orbitalDistanceKm.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.equatorialRadiusKm
                        .toString()
                        .toLowerCase()
                        .contains(query.toLowerCase()) ||
                    element.densityGCm3.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.surfaceGravityMS2.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.atmosphereComposition.toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.escapeVelocityKmh.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.dayLengthEarthDays
                        .toString()
                        .toLowerCase()
                        .contains(query.toLowerCase()) ||
                    element.yearLengthEarthDays
                        .toString()
                        .toLowerCase()
                        .contains(query.toLowerCase()) ||
                    element.orbitalSpeedKmh.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.volumeKm3.toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.moons.toString().toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.massKg.toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.description.toLowerCase().contains(
                      query.toLowerCase(),
                    ) ||
                    element.image.toLowerCase().contains(query.toLowerCase());
              })
              .toSet()
              .toList();
      state = AsyncValue.data(result);
    } else {
      state = AsyncValue.data(truthSource);
      ref.notifyListeners();
    }
  }
}

final planetsNotifierProvider = StateNotifierProvider.autoDispose<
  PlanetsNotifier,
  AsyncValue<List<PlanetEntity>>
>((ref) {
  return PlanetsNotifier(ref, PlanetUseCase());
});
