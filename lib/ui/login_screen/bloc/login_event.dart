part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class EmailAddressEvent extends LoginEvent {
  const EmailAddressEvent({required this.emailAddress});

  final String emailAddress;
}

class PasswordEvent extends LoginEvent {
  const PasswordEvent({required this.password});

  final String password;
}

class TogglePasswordVisibilityEvent extends LoginEvent {
  const TogglePasswordVisibilityEvent();
}

class OnClickLoginEvent extends LoginEvent {
  const OnClickLoginEvent();
}

class LoginApiResponseEvent extends LoginEvent {
  const LoginApiResponseEvent({required this.baseResponseModel});

  final BaseResponseModel baseResponseModel;
}
