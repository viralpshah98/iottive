// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryResponseModel _$OrderHistoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryResponseModel {
  @JsonKey(name: 'date')
  int? get date => throw _privateConstructorUsedError;

  @JsonKey(name: 'orderID')
  String? get orderID => throw _privateConstructorUsedError;

  @JsonKey(name: 'paidAmount')
  double? get paidAmount => throw _privateConstructorUsedError;

  @JsonKey(name: 'discountAmount')
  double? get discountAmount => throw _privateConstructorUsedError;

  @JsonKey(name: 'redeemedRewards')
  int? get redeemedRewards => throw _privateConstructorUsedError;

  @JsonKey(name: 'coolerId')
  String? get coolerId => throw _privateConstructorUsedError;

  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus => throw _privateConstructorUsedError;

  @JsonKey(name: 'amountDeductedByRewardPoint')
  int? get amountDeductedByRewardPoint => throw _privateConstructorUsedError;

  @JsonKey(name: 'amountDeductedByPaymentGateway')
  double? get amountDeductedByPaymentGateway =>
      throw _privateConstructorUsedError;

  @JsonKey(name: 'product')
  List<ProductResponseModel>? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryResponseModelCopyWith<OrderHistoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryResponseModelCopyWith<$Res> {
  factory $OrderHistoryResponseModelCopyWith(OrderHistoryResponseModel value,
          $Res Function(OrderHistoryResponseModel) then) =
      _$OrderHistoryResponseModelCopyWithImpl<$Res, OrderHistoryResponseModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'date') int? date,
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
      @JsonKey(name: 'product') List<ProductResponseModel>? product});
}

/// @nodoc
class _$OrderHistoryResponseModelCopyWithImpl<$Res,
        $Val extends OrderHistoryResponseModel>
    implements $OrderHistoryResponseModelCopyWith<$Res> {
  _$OrderHistoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? orderID = freezed,
    Object? paidAmount = freezed,
    Object? discountAmount = freezed,
    Object? redeemedRewards = freezed,
    Object? coolerId = freezed,
    Object? paymentStatus = freezed,
    Object? amountDeductedByRewardPoint = freezed,
    Object? amountDeductedByPaymentGateway = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      redeemedRewards: freezed == redeemedRewards
          ? _value.redeemedRewards
          : redeemedRewards // ignore: cast_nullable_to_non_nullable
              as int?,
      coolerId: freezed == coolerId
          ? _value.coolerId
          : coolerId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      amountDeductedByRewardPoint: freezed == amountDeductedByRewardPoint
          ? _value.amountDeductedByRewardPoint
          : amountDeductedByRewardPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDeductedByPaymentGateway: freezed == amountDeductedByPaymentGateway
          ? _value.amountDeductedByPaymentGateway
          : amountDeductedByPaymentGateway // ignore: cast_nullable_to_non_nullable
              as double?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderHistoryResponseModelImplCopyWith<$Res>
    implements $OrderHistoryResponseModelCopyWith<$Res> {
  factory _$$OrderHistoryResponseModelImplCopyWith(
          _$OrderHistoryResponseModelImpl value,
          $Res Function(_$OrderHistoryResponseModelImpl) then) =
      __$$OrderHistoryResponseModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') int? date,
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
      @JsonKey(name: 'product') List<ProductResponseModel>? product});
}

/// @nodoc
class __$$OrderHistoryResponseModelImplCopyWithImpl<$Res>
    extends _$OrderHistoryResponseModelCopyWithImpl<$Res,
        _$OrderHistoryResponseModelImpl>
    implements _$$OrderHistoryResponseModelImplCopyWith<$Res> {
  __$$OrderHistoryResponseModelImplCopyWithImpl(
      _$OrderHistoryResponseModelImpl _value,
      $Res Function(_$OrderHistoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? orderID = freezed,
    Object? paidAmount = freezed,
    Object? discountAmount = freezed,
    Object? redeemedRewards = freezed,
    Object? coolerId = freezed,
    Object? paymentStatus = freezed,
    Object? amountDeductedByRewardPoint = freezed,
    Object? amountDeductedByPaymentGateway = freezed,
    Object? product = freezed,
  }) {
    return _then(_$OrderHistoryResponseModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      redeemedRewards: freezed == redeemedRewards
          ? _value.redeemedRewards
          : redeemedRewards // ignore: cast_nullable_to_non_nullable
              as int?,
      coolerId: freezed == coolerId
          ? _value.coolerId
          : coolerId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      amountDeductedByRewardPoint: freezed == amountDeductedByRewardPoint
          ? _value.amountDeductedByRewardPoint
          : amountDeductedByRewardPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDeductedByPaymentGateway: freezed == amountDeductedByPaymentGateway
          ? _value.amountDeductedByPaymentGateway
          : amountDeductedByPaymentGateway // ignore: cast_nullable_to_non_nullable
              as double?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderHistoryResponseModelImpl implements _OrderHistoryResponseModel {
  const _$OrderHistoryResponseModelImpl(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'orderID') this.orderID,
      @JsonKey(name: 'paidAmount') this.paidAmount,
      @JsonKey(name: 'discountAmount') this.discountAmount,
      @JsonKey(name: 'redeemedRewards') this.redeemedRewards,
      @JsonKey(name: 'coolerId') this.coolerId,
      @JsonKey(name: 'paymentStatus') this.paymentStatus,
      @JsonKey(name: 'amountDeductedByRewardPoint')
      this.amountDeductedByRewardPoint,
      @JsonKey(name: 'amountDeductedByPaymentGateway')
      this.amountDeductedByPaymentGateway,
      @JsonKey(name: 'product') final List<ProductResponseModel>? product})
      : _product = product;

  factory _$OrderHistoryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final int? date;
  @override
  @JsonKey(name: 'orderID')
  final String? orderID;
  @override
  @JsonKey(name: 'paidAmount')
  final double? paidAmount;
  @override
  @JsonKey(name: 'discountAmount')
  final double? discountAmount;
  @override
  @JsonKey(name: 'redeemedRewards')
  final int? redeemedRewards;
  @override
  @JsonKey(name: 'coolerId')
  final String? coolerId;
  @override
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'amountDeductedByRewardPoint')
  final int? amountDeductedByRewardPoint;
  @override
  @JsonKey(name: 'amountDeductedByPaymentGateway')
  final double? amountDeductedByPaymentGateway;
  final List<ProductResponseModel>? _product;

  @override
  @JsonKey(name: 'product')
  List<ProductResponseModel>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderHistoryResponseModel(date: $date, orderID: $orderID, paidAmount: $paidAmount, discountAmount: $discountAmount, redeemedRewards: $redeemedRewards, coolerId: $coolerId, paymentStatus: $paymentStatus, amountDeductedByRewardPoint: $amountDeductedByRewardPoint, amountDeductedByPaymentGateway: $amountDeductedByPaymentGateway, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryResponseModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.redeemedRewards, redeemedRewards) ||
                other.redeemedRewards == redeemedRewards) &&
            (identical(other.coolerId, coolerId) ||
                other.coolerId == coolerId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.amountDeductedByRewardPoint,
                    amountDeductedByRewardPoint) ||
                other.amountDeductedByRewardPoint ==
                    amountDeductedByRewardPoint) &&
            (identical(other.amountDeductedByPaymentGateway,
                    amountDeductedByPaymentGateway) ||
                other.amountDeductedByPaymentGateway ==
                    amountDeductedByPaymentGateway) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      orderID,
      paidAmount,
      discountAmount,
      redeemedRewards,
      coolerId,
      paymentStatus,
      amountDeductedByRewardPoint,
      amountDeductedByPaymentGateway,
      const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryResponseModelImplCopyWith<_$OrderHistoryResponseModelImpl>
      get copyWith => __$$OrderHistoryResponseModelImplCopyWithImpl<
          _$OrderHistoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryResponseModel implements OrderHistoryResponseModel {
  const factory _OrderHistoryResponseModel(
          {@JsonKey(name: 'date') final int? date,
          @JsonKey(name: 'orderID') final String? orderID,
          @JsonKey(name: 'paidAmount') final double? paidAmount,
          @JsonKey(name: 'discountAmount') final double? discountAmount,
          @JsonKey(name: 'redeemedRewards') final int? redeemedRewards,
          @JsonKey(name: 'coolerId') final String? coolerId,
          @JsonKey(name: 'paymentStatus') final String? paymentStatus,
          @JsonKey(name: 'amountDeductedByRewardPoint')
          final int? amountDeductedByRewardPoint,
          @JsonKey(name: 'amountDeductedByPaymentGateway')
          final double? amountDeductedByPaymentGateway,
          @JsonKey(name: 'product')
          final List<ProductResponseModel>? product}) =
      _$OrderHistoryResponseModelImpl;

  factory _OrderHistoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  int? get date;

  @override
  @JsonKey(name: 'orderID')
  String? get orderID;

  @override
  @JsonKey(name: 'paidAmount')
  double? get paidAmount;

  @override
  @JsonKey(name: 'discountAmount')
  double? get discountAmount;

  @override
  @JsonKey(name: 'redeemedRewards')
  int? get redeemedRewards;

  @override
  @JsonKey(name: 'coolerId')
  String? get coolerId;

  @override
  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus;

  @override
  @JsonKey(name: 'amountDeductedByRewardPoint')
  int? get amountDeductedByRewardPoint;

  @override
  @JsonKey(name: 'amountDeductedByPaymentGateway')
  double? get amountDeductedByPaymentGateway;

  @override
  @JsonKey(name: 'product')
  List<ProductResponseModel>? get product;

  @override
  @JsonKey(ignore: true)
  _$$OrderHistoryResponseModelImplCopyWith<_$OrderHistoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
