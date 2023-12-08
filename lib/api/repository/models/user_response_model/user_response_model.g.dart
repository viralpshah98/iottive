// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      success: json['success'] as bool?,
      status: json['status'] as bool?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              OrderHistoryResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      primaryEmail: json['primaryEmail'] as String?,
      profileImageURL: json['profileImageURL'] as String?,
      authToken: json['authToken'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      rewardPoint: json['rewardPoint'] as int?,
      aliasId: json['aliasId'] as String?,
      saferPayToken: json['saferPayToken'] as String?,
      saferPayCardDetails: json['saferPayCardDetails'] as String?,
      birthDate: json['birthDate'] as String?,
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'primaryEmail': instance.primaryEmail,
      'profileImageURL': instance.profileImageURL,
      'authToken': instance.authToken,
      'mobileNumber': instance.mobileNumber,
      'rewardPoint': instance.rewardPoint,
      'aliasId': instance.aliasId,
      'saferPayToken': instance.saferPayToken,
      'saferPayCardDetails': instance.saferPayCardDetails,
      'birthDate': instance.birthDate,
    };
