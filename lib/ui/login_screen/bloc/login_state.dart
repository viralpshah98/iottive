part of 'login_bloc.dart';

class LoginState extends Equatable with FormzMixin {
  const LoginState({
    this.apiStatus,
    this.emailAddress = const EmailAddress.pure(''),
    this.password = const Password.pure(''),
    this.isPasswordVisible = false,
  });

  final ApiStatus? apiStatus;
  final EmailAddress emailAddress;
  final Password password;
  final bool isPasswordVisible;

  LoginState copyWith({
    ApiStatus? apiStatus,
    EmailAddress? emailAddress,
    Password? password,
    bool? isPasswordVisible,
  }) {
    return LoginState(
      apiStatus: apiStatus ?? this.apiStatus,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object?> get props => [
        apiStatus,
        emailAddress,
        password,
        isPasswordVisible,
      ];

  @override
  List<FormzInput> get inputs => [
        emailAddress,
        password,
      ];
}
