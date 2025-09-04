import 'package:planets/data/model/planets_model.dart';
import 'package:planets/domain/planet_entity.dart';

abstract class Repository{

  Future<List<PlanetEntity>> getPlanets();

}