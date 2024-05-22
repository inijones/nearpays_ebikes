import 'package:json_annotation/json_annotation.dart';

part 'validation_error_response.g.dart';

@JsonSerializable()
class ValidationErrorResponse {
    @JsonKey(name: "message")
    String message;
    @JsonKey(name: "errors")
    Errors errors;

    ValidationErrorResponse({
        required this.message,
        required this.errors,
    });

    factory ValidationErrorResponse.fromJson(Map<String, dynamic> json) => _$ValidationErrorResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ValidationErrorResponseToJson(this);
}

@JsonSerializable()
class Errors {
    @JsonKey(name: "property1")
    List<String> property1;
    @JsonKey(name: "property2")
    List<String> property2;

    Errors({
        required this.property1,
        required this.property2,
    });

    factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);

    Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
