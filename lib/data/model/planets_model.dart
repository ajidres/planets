class PlanetsModel {
  PlanetsModel({
      String? msg, 
      List<PlanetModel>? data,}){
    _msg = msg;
    _data = data;
}

  PlanetsModel.fromJson(dynamic json) {
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(PlanetModel.fromJson(v));
      });
    }
  }
  String? _msg;
  List<PlanetModel>? _data;

  String? get msg => _msg;
  List<PlanetModel>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class PlanetModel {
  PlanetModel({
      String? name, 
      num? orbitalDistanceKm, 
      num? equatorialRadiusKm, 
      String? volumeKm3,
      String? massKg, 
      num? densityGCm3, 
      num? surfaceGravityMS2, 
      num? escapeVelocityKmh, 
      num? dayLengthEarthDays, 
      num? yearLengthEarthDays, 
      num? orbitalSpeedKmh, 
      String? atmosphereComposition, 
      num? moons, 
      String? image, 
      String? description,}){
    _name = name;
    _orbitalDistanceKm = orbitalDistanceKm;
    _equatorialRadiusKm = equatorialRadiusKm;
    _volumeKm3 = volumeKm3;
    _massKg = massKg;
    _densityGCm3 = densityGCm3;
    _surfaceGravityMS2 = surfaceGravityMS2;
    _escapeVelocityKmh = escapeVelocityKmh;
    _dayLengthEarthDays = dayLengthEarthDays;
    _yearLengthEarthDays = yearLengthEarthDays;
    _orbitalSpeedKmh = orbitalSpeedKmh;
    _atmosphereComposition = atmosphereComposition;
    _moons = moons;
    _image = image;
    _description = description;
}

  PlanetModel.fromJson(dynamic json) {
    _name = json['name'];
    _orbitalDistanceKm = json['orbital_distance_km'];
    _equatorialRadiusKm = json['equatorial_radius_km'];
    _volumeKm3 = json['volume_km3'].toString();
    _massKg = json['mass_kg'];
    _densityGCm3 = json['density_g_cm3'];
    _surfaceGravityMS2 = json['surface_gravity_m_s2'];
    _escapeVelocityKmh = json['escape_velocity_kmh'];
    _dayLengthEarthDays = json['day_length_earth_days'];
    _yearLengthEarthDays = json['year_length_earth_days'];
    _orbitalSpeedKmh = json['orbital_speed_kmh'];
    _atmosphereComposition = json['atmosphere_composition'];
    _moons = json['moons'];
    _image = json['image'];
    _description = json['description'];
  }
  String? _name;
  num? _orbitalDistanceKm;
  num? _equatorialRadiusKm;
  String? _volumeKm3;
  String? _massKg;
  num? _densityGCm3;
  num? _surfaceGravityMS2;
  num? _escapeVelocityKmh;
  num? _dayLengthEarthDays;
  num? _yearLengthEarthDays;
  num? _orbitalSpeedKmh;
  String? _atmosphereComposition;
  num? _moons;
  String? _image;
  String? _description;

  String? get name => _name;
  num? get orbitalDistanceKm => _orbitalDistanceKm;
  num? get equatorialRadiusKm => _equatorialRadiusKm;
  String? get volumeKm3 => _volumeKm3;
  String? get massKg => _massKg;
  num? get densityGCm3 => _densityGCm3;
  num? get surfaceGravityMS2 => _surfaceGravityMS2;
  num? get escapeVelocityKmh => _escapeVelocityKmh;
  num? get dayLengthEarthDays => _dayLengthEarthDays;
  num? get yearLengthEarthDays => _yearLengthEarthDays;
  num? get orbitalSpeedKmh => _orbitalSpeedKmh;
  String? get atmosphereComposition => _atmosphereComposition;
  num? get moons => _moons;
  String? get image => _image;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['orbital_distance_km'] = _orbitalDistanceKm;
    map['equatorial_radius_km'] = _equatorialRadiusKm;
    map['volume_km3'] = _volumeKm3;
    map['mass_kg'] = _massKg;
    map['density_g_cm3'] = _densityGCm3;
    map['surface_gravity_m_s2'] = _surfaceGravityMS2;
    map['escape_velocity_kmh'] = _escapeVelocityKmh;
    map['day_length_earth_days'] = _dayLengthEarthDays;
    map['year_length_earth_days'] = _yearLengthEarthDays;
    map['orbital_speed_kmh'] = _orbitalSpeedKmh;
    map['atmosphere_composition'] = _atmosphereComposition;
    map['moons'] = _moons;
    map['image'] = _image;
    map['description'] = _description;
    return map;
  }

}