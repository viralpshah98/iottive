import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:iottive/api/api_client/api_client.dart';
import 'package:iottive/api/repository/models/base_response_model/base_response_model.dart';
import 'package:iottive/api/repository/models/user_response_model/user_response_model.dart';
import 'package:iottive/constant/constant.dart';
import 'package:iottive/enum/enum.dart';

class UserRepository {
  ApiClient apiClient = ApiClient(Dio());

  final _loginApiStreamController = StreamController<BaseResponseModel>();

  Stream<BaseResponseModel> get loginApiStream async* {
    yield* _loginApiStreamController.stream;
  }

  Future<void> logIn(
      {required String emailAddress, required String password}) async {
    _loginApiStreamController
        .add(const BaseResponseModel(apiStatus: ApiStatus.loading));
    try {
      await apiClient
          .loginAPI(
        password: password,
        email: emailAddress,
        languageCode: languageCode,
        OSVersion: OSVersion,
        phoneManufacturer: phoneManufacturer,
        phoneModel: phoneManufacturer,
        platform: Platform.isAndroid ? 'android' : 'ios',
      )
          .then((response) {
        _loginApiStreamController.add(
          BaseResponseModel(
            apiStatus: ApiStatus.success,
            data: response.data,
          ),
        );
      }).catchError((onError) {
        _loginApiStreamController.add(
          BaseResponseModel(
            apiStatus: ApiStatus.error,
            data: UserResponseModel(
              message: onError?.response.data.message,
            ),
          ),
        );
      });
    } catch (e) {
      _loginApiStreamController.add(
          const BaseResponseModel(apiStatus: ApiStatus.somethingWentWrong));
    }
  }

  final _orderHistoryStreamController = StreamController<BaseResponseModel>();

  Stream<BaseResponseModel> get orderHistoryStream async* {
    yield* _orderHistoryStreamController.stream;
  }

  Future<void> orderHistory(
      {required String authToken, required int userId}) async {
    _orderHistoryStreamController
        .add(const BaseResponseModel(apiStatus: ApiStatus.loading));
    try {
      await apiClient
          .orderHistoryAPI(
        userId: userId,
        authToken: authToken,
      )
          .then((response) {
        _orderHistoryStreamController.add(
          BaseResponseModel(
            apiStatus: ApiStatus.success,
            data: response.data,
          ),
        );
      }).catchError((onError) {
        _orderHistoryStreamController.add(
          BaseResponseModel(
            apiStatus: ApiStatus.error,
            data: UserResponseModel(
              message: onError?.response.data.message,
            ),
          ),
        );
      });
    } catch (e) {
      _orderHistoryStreamController.add(
          const BaseResponseModel(apiStatus: ApiStatus.somethingWentWrong));
    }
  }
}
