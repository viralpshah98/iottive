// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseModelImpl _$$ProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseModelImpl(
      productName: json['productName'] as String?,
      productId: json['productId'] as int?,
      perProductPrice: (json['perProductPrice'] as num?)?.toDouble(),
      productCount: json['productCount'] as int?,
      productOtherUrl: json['productOtherUrl'] as String?,
      productLocalName: json['productLocalName'] as String?,
      currencyCode: json['currencyCode'] as String?,
      currencyName: json['currencyName'] as String?,
      shortName: json['shortName'] as String?,
      flavourName: json['flavourName'] as String?,
      packagingType: json['packagingType'] as String?,
    );

Map<String, dynamic> _$$ProductResponseModelImplToJson(
        _$ProductResponseModelImpl instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productId': instance.productId,
      'perProductPrice': instance.perProductPrice,
      'productCount': instance.productCount,
      'productOtherUrl': instance.productOtherUrl,
      'productLocalName': instance.productLocalName,
      'currencyCode': instance.currencyCode,
      'currencyName': instance.currencyName,
      'shortName': instance.shortName,
      'flavourName': instance.flavourName,
      'packagingType': instance.packagingType,
    };
