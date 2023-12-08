// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) {
  return _BaseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseModel {
  @JsonKey(name: 'apiStatus')
  ApiStatus? get apiStatus => throw _privateConstructorUsedError;

  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseResponseModelCopyWith<BaseResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<$Res> {
  factory $BaseResponseModelCopyWith(
          BaseResponseModel value, $Res Function(BaseResponseModel) then) =
      _$BaseResponseModelCopyWithImpl<$Res, BaseResponseModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'apiStatus') ApiStatus? apiStatus,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<$Res, $Val extends BaseResponseModel>
    implements $BaseResponseModelCopyWith<$Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseModelImplCopyWith<$Res>
    implements $BaseResponseModelCopyWith<$Res> {
  factory _$$BaseResponseModelImplCopyWith(_$BaseResponseModelImpl value,
          $Res Function(_$BaseResponseModelImpl) then) =
      __$$BaseResponseModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'apiStatus') ApiStatus? apiStatus,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$BaseResponseModelImplCopyWithImpl<$Res>
    extends _$BaseResponseModelCopyWithImpl<$Res, _$BaseResponseModelImpl>
    implements _$$BaseResponseModelImplCopyWith<$Res> {
  __$$BaseResponseModelImplCopyWithImpl(_$BaseResponseModelImpl _value,
      $Res Function(_$BaseResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseModelImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BaseResponseModelImpl implements _BaseResponseModel {
  const _$BaseResponseModelImpl(
      {@JsonKey(name: 'apiStatus') this.apiStatus,
      @JsonKey(name: 'data') this.data});

  factory _$BaseResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'apiStatus')
  final ApiStatus? apiStatus;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  @override
  String toString() {
    return 'BaseResponseModel(apiStatus: $apiStatus, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseModelImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, apiStatus, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseModelImplCopyWith<_$BaseResponseModelImpl> get copyWith =>
      __$$BaseResponseModelImplCopyWithImpl<_$BaseResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseModel implements BaseResponseModel {
  const factory _BaseResponseModel(
      {@JsonKey(name: 'apiStatus') final ApiStatus? apiStatus,
      @JsonKey(name: 'data') final dynamic data}) = _$BaseResponseModelImpl;

  factory _BaseResponseModel.fromJson(Map<String, dynamic> json) =
      _$BaseResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'apiStatus')
  ApiStatus? get apiStatus;

  @override
  @JsonKey(name: 'data')
  dynamic get data;

  @override
  @JsonKey(ignore: true)
  _$$BaseResponseModelImplCopyWith<_$BaseResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
