import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/data/source/data_source.dart';
import 'package:planets/data/model/planets_model.dart';

class DataSourceImpl extends DataSource{

  final dio = Dio(BaseOptions(baseUrl: BASE_API));

  @override
  Future<PlanetsModel> getPlanets() async {
    try {

      final result = await dio.get('/planets');

      return PlanetsModel.fromJson(result.data);

    } catch (e) {

      throw 'Petition error, try again later';
    }
  }

}