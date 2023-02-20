part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required SignInData signInData}) =
      AuthEventLogin;
  const factory AuthEvent.registration({required SignUpData signUpData}) =
      AuthEventRegistration;
}
