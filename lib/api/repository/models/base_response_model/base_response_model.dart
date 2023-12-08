import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iottive/enum/enum.dart';

part 'base_response_model.freezed.dart';

part 'base_response_model.g.dart';

@freezed
class BaseResponseModel with _$BaseResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory BaseResponseModel({
    @JsonKey(name: 'apiStatus') ApiStatus? apiStatus,
    @JsonKey(name: 'data') dynamic data,
  }) = _BaseResponseModel;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseModelFromJson(json);
}
