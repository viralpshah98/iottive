// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseModelImpl _$$BaseResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseModelImpl(
      apiStatus: $enumDecodeNullable(_$ApiStatusEnumMap, json['apiStatus']),
      data: json['data'],
    );

Map<String, dynamic> _$$BaseResponseModelImplToJson(
        _$BaseResponseModelImpl instance) =>
    <String, dynamic>{
      'apiStatus': _$ApiStatusEnumMap[instance.apiStatus],
      'data': instance.data,
    };

const _$ApiStatusEnumMap = {
  ApiStatus.loading: 'loading',
  ApiStatus.success: 'success',
  ApiStatus.error: 'error',
  ApiStatus.somethingWentWrong: 'somethingWentWrong',
};
