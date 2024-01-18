// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:dio/dio.dart';

import 'test/test_client.dart';

/// Backend `v1.0.0`
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  TestClient? _test;

  TestClient get test => _test ??= TestClient(_dio, baseUrl: _baseUrl);
}
