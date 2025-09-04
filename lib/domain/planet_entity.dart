import 'package:planets/data/model/planets_model.dart';

class PlanetEntity {
  String name;
  double orbitalDistanceKm;
  double equatorialRadiusKm;
  String volumeKm3;
  String massKg;
  double densityGCm3;
  double surfaceGravityMS2;
  double escapeVelocityKmh;
  double dayLengthEarthDays;
  double yearLengthEarthDays;
  double orbitalSpeedKmh;
  String atmosphereComposition;
  double moons;
  String image;
  String description;

  bool isFavorite = false;

  PlanetEntity({
    required this.name,
    required this.orbitalDistanceKm,
    required this.equatorialRadiusKm,
    required this.volumeKm3,
    required this.massKg,
    required this.densityGCm3,
    required this.surfaceGravityMS2,
    required this.escapeVelocityKmh,
    required this.dayLengthEarthDays,
    required this.yearLengthEarthDays,
    required this.orbitalSpeedKmh,
    required this.atmosphereComposition,
    required this.moons,
    required this.image,
    required this.description,
  });

}
