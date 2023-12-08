// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryResponseModelImpl _$$OrderHistoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryResponseModelImpl(
      date: json['date'] as int?,
      orderID: json['orderID'] as String?,
      paidAmount: (json['paidAmount'] as num?)?.toDouble(),
      discountAmount: (json['discountAmount'] as num?)?.toDouble(),
      redeemedRewards: json['redeemedRewards'] as int?,
      coolerId: json['coolerId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      amountDeductedByRewardPoint: json['amountDeductedByRewardPoint'] as int?,
      amountDeductedByPaymentGateway:
          (json['amountDeductedByPaymentGateway'] as num?)?.toDouble(),
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => ProductResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderHistoryResponseModelImplToJson(
        _$OrderHistoryResponseModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'orderID': instance.orderID,
      'paidAmount': instance.paidAmount,
      'discountAmount': instance.discountAmount,
      'redeemedRewards': instance.redeemedRewards,
      'coolerId': instance.coolerId,
      'paymentStatus': instance.paymentStatus,
      'amountDeductedByRewardPoint': instance.amountDeductedByRewardPoint,
      'amountDeductedByPaymentGateway': instance.amountDeductedByPaymentGateway,
      'product': instance.product?.map((e) => e.toJson()).toList(),
    };
