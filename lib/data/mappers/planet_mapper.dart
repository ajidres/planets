import 'package:planets/data/model/planets_model.dart';
import 'package:planets/domain/planet_entity.dart';

List<PlanetEntity> toEntityPlanets(PlanetsModel data) =>
    data.data
        ?.map(
                (model) => PlanetEntity(
                    name: model.name ?? '',
                    orbitalDistanceKm: model.orbitalDistanceKm?.toDouble() ?? 0.0,
                    equatorialRadiusKm: model.equatorialRadiusKm?.toDouble() ?? 0.0,
                    volumeKm3: model.volumeKm3??'',
                    massKg: model.massKg ?? '',
                    densityGCm3: model.densityGCm3?.toDouble() ?? 0.0,
                    surfaceGravityMS2: model.surfaceGravityMS2?.toDouble() ?? 0.0,
                    escapeVelocityKmh: model.escapeVelocityKmh?.toDouble() ?? 0.0,
                    dayLengthEarthDays: model.dayLengthEarthDays?.toDouble() ?? 0.0,
                    yearLengthEarthDays: model.yearLengthEarthDays?.toDouble() ?? 0.0,
                    orbitalSpeedKmh: model.orbitalSpeedKmh?.toDouble() ?? 0.0,
                    atmosphereComposition: model.atmosphereComposition ?? '',
                    moons: model.moons?.toDouble() ?? 0.0,
                    image: model.image ?? '',
                    description: model.description ?? '',
            ),
    )
        .toList() ??
        [];