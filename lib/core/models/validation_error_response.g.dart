// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidationErrorResponse _$ValidationErrorResponseFromJson(
        Map<String, dynamic> json) =>
    ValidationErrorResponse(
      message: json['message'] as String,
      errors: Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidationErrorResponseToJson(
        ValidationErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      property1:
          (json['property1'] as List<dynamic>).map((e) => e as String).toList(),
      property2:
          (json['property2'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'property1': instance.property1,
      'property2': instance.property2,
    };
