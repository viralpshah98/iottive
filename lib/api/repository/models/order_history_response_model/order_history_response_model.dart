import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iottive/api/repository/models/product_response_model/product_response_model.dart';

part 'order_history_response_model.freezed.dart';

part 'order_history_response_model.g.dart';

@freezed
class OrderHistoryResponseModel with _$OrderHistoryResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory OrderHistoryResponseModel({
    @JsonKey(name: 'date') int? date,
    @JsonKey(name: 'orderID') String? orderID,
    @JsonKey(name: 'paidAmount') double? paidAmount,
    @JsonKey(name: 'discountAmount') double? discountAmount,
    @JsonKey(name: 'redeemedRewards') int? redeemedRewards,
    @JsonKey(name: 'coolerId') String? coolerId,
    @JsonKey(name: 'paymentStatus') String? paymentStatus,
    @JsonKey(name: 'amountDeductedByRewardPoint')
    int? amountDeductedByRewardPoint,
    @JsonKey(name: 'amountDeductedByPaymentGateway')
    double? amountDeductedByPaymentGateway,
    @JsonKey(name: 'product') List<ProductResponseModel>? product,
  }) = _OrderHistoryResponseModel;

  factory OrderHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryResponseModelFromJson(json);
}
