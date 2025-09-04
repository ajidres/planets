import 'package:planets/data/model/planets_model.dart';

abstract class DataSource{

  Future<PlanetsModel> getPlanets();

}