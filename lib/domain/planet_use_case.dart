import 'package:planets/data/repositories/repository_impl.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/domain/repository.dart';

class PlanetUseCase{
  final Repository repository = RepositoryImpl();


  Future<List<PlanetEntity>> call() async {
    try{
      final data = await repository.getPlanets();
      return data;
    }catch(e){
      rethrow;
    }
  }
}