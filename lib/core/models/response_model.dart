import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';


@JsonSerializable()
class ResponseModel {
  @JsonKey(name: 'token')
  final bool? token;

  @JsonKey(name: 'user')
  final dynamic user;

  @JsonKey(name: 'data')
  final dynamic data;

  ResponseModel({
    this.token,
    this.user,
    this.data,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}
