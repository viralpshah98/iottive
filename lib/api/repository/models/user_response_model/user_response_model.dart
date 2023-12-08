import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iottive/api/repository/models/order_history_response_model/order_history_response_model.dart';

part 'user_response_model.freezed.dart';

part 'user_response_model.g.dart';

@freezed
class UserResponseModel with _$UserResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<OrderHistoryResponseModel>? data,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'primaryEmail') String? primaryEmail,
    @JsonKey(name: 'profileImageURL') String? profileImageURL,
    @JsonKey(name: 'authToken') String? authToken,
    @JsonKey(name: 'mobileNumber') String? mobileNumber,
    @JsonKey(name: 'rewardPoint') int? rewardPoint,
    @JsonKey(name: 'aliasId') String? aliasId,
    @JsonKey(name: 'saferPayToken') String? saferPayToken,
    @JsonKey(name: 'saferPayCardDetails') String? saferPayCardDetails,
    @JsonKey(name: 'birthDate') String? birthDate,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}
