// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/request.dart';

part 'test_client.g.dart';

@RestApi()
abstract class TestClient {
  factory TestClient(Dio dio, {String? baseUrl}) = _TestClient;

  /// [body] -
  @MultiPart()
  @POST('/test')
  Future<void> endpoint({
    @Part() required Request file,
  });
}
