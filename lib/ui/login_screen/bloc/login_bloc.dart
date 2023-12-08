import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:iottive/api/repository/models/base_response_model/base_response_model.dart';
import 'package:iottive/api/repository/models/user_response_model/user_response_model.dart';
import 'package:iottive/api/repository/user_repository/user_repository.dart';
import 'package:iottive/common_functions/common_fuctions.dart';
import 'package:iottive/enum/enum.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';
import 'package:iottive/utils/get_storage_utils/get_storage_utils.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>(_mapEventToState);
    _userRepository = UserRepository();

    _userRepository.loginApiStream.listen((event) {
      add(LoginApiResponseEvent(baseResponseModel: event));
    });
  }

  late UserRepository _userRepository;

  void _mapEventToState(LoginEvent event, Emitter<LoginState> emit) {
    if (event is EmailAddressEvent) {
      return _mapEmailAddressEventToState(event, emit);
    } else if (event is PasswordEvent) {
      return _mapPasswordEventToState(event, emit);
    } else if (event is TogglePasswordVisibilityEvent) {
      return _mapTogglePasswordVisibilityEventToState(event, emit);
    } else if (event is OnClickLoginEvent) {
      return _mapOnClickLoginEventToState(event, emit);
    } else if (event is LoginApiResponseEvent) {
      return _mapLoginApiResponseEventToState(event, emit);
    }
  }

  void _mapEmailAddressEventToState(
      EmailAddressEvent event, Emitter<LoginState> emit) {
    final emailAddress = EmailAddress.dirty(value: event.emailAddress);
    emit(state.copyWith(emailAddress: emailAddress));
  }

  void _mapPasswordEventToState(PasswordEvent event, Emitter<LoginState> emit) {
    final password = Password.dirty(value: event.password);
    emit(state.copyWith(password: password));
  }

  void _mapOnClickLoginEventToState(
      OnClickLoginEvent event, Emitter<LoginState> emit) {
    CommonFunctions.hideKeyboard().then((value) {
      _userRepository.logIn(
        emailAddress: state.emailAddress.value,
        password: state.password.value,
      );
    });
  }

  void _mapLoginApiResponseEventToState(
      LoginApiResponseEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(apiStatus: event.baseResponseModel.apiStatus));
    if (event.baseResponseModel.apiStatus == ApiStatus.success) {
      final userResponseModel =
          UserResponseModel.fromJson(event.baseResponseModel.data);
      if (!(userResponseModel.success ?? false)) {
        GetSnackBar(
          message: userResponseModel.message ?? 'Something went wrong',
          icon: const Icon(Icons.error),
          duration: const Duration(seconds: 2),
        ).show();
      } else {
        GetStorageUtils.setString(
            kAuthorizationToken, userResponseModel.authToken ?? '');
        GetStorageUtils.setInt(kUserId, userResponseModel.userId ?? -1);
        GetStorageUtils.setBoolean(kIsLoggedIn, true);
        GetStorageUtils.setBoolean(kIsLoggedIn, true);
        Get.offAllNamed(ProductListScreen.route);
      }
    } else if (event.baseResponseModel.apiStatus == ApiStatus.error) {
      final userResponseModel =
          UserResponseModel.fromJson(event.baseResponseModel.data);
      if (userResponseModel.message != '') {
        GetSnackBar(
          message: userResponseModel.message,
          icon: const Icon(Icons.error),
          duration: const Duration(seconds: 2),
        ).show();
      }
    }
  }

  void _mapTogglePasswordVisibilityEventToState(
      TogglePasswordVisibilityEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}
