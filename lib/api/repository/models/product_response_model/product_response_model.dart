import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response_model.freezed.dart';

part 'product_response_model.g.dart';

@freezed
class ProductResponseModel with _$ProductResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory ProductResponseModel({
    @JsonKey(name: 'productName') String? productName,
    @JsonKey(name: 'productId') int? productId,
    @JsonKey(name: 'perProductPrice') double? perProductPrice,
    @JsonKey(name: 'productCount') int? productCount,
    @JsonKey(name: 'productOtherUrl') String? productOtherUrl,
    @JsonKey(name: 'productLocalName') String? productLocalName,
    @JsonKey(name: 'currencyCode') String? currencyCode,
    @JsonKey(name: 'currencyName') String? currencyName,
    @JsonKey(name: 'shortName') String? shortName,
    @JsonKey(name: 'flavourName') String? flavourName,
    @JsonKey(name: 'packagingType') String? packagingType,
  }) = _ProductResponseModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
}
