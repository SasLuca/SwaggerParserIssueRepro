// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed()
class Request with _$Request {
  const factory Request({
    File? file,
  }) = _Request;
  
  factory Request.fromJson(Map<String, Object?> json) => _$RequestFromJson(json);
}
