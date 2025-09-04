
import 'package:planets/data/mappers/planet_mapper.dart';
import 'package:planets/data/source/data_source.dart';
import 'package:planets/data/source/data_source_impl.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/domain/repository.dart';

class RepositoryImpl extends Repository{

  DataSource dataSource = DataSourceImpl();

  @override
  Future<List<PlanetEntity>> getPlanets() async {

    try{
      var result = await dataSource.getPlanets();
      return toEntityPlanets(result);
    }catch(e){
      rethrow;
    }

  }

}