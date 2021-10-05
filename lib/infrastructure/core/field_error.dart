import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_error.freezed.dart';

@freezed
class FieldError with _$FieldError {
  const FieldError._();

  const factory FieldError({
    required String field,
    required String message,
  }) = _FieldError;

  factory FieldError.fromMap(Map<String, dynamic> map) {
    return FieldError(
      field: map['field'] ?? '',
      message: map['message'] ?? '',
    );
  }

  static List<FieldError> getErrors(Response<dynamic> response) {
    final results = List<Map<String, dynamic>>.from(
      jsonDecode(response.toString())['errors'],
    );
    return results.map((e) => FieldError.fromMap(e)).toList();
  }

  // ignore: prefer_constructors_over_static_methods
  static FieldError getError(Response<dynamic> response) {
    final result = Map<String, dynamic>.from(
      jsonDecode(response.toString())['error'],
    );
    return FieldError.fromMap(result);
  }
}
