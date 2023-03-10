part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required SignInData signInData}) =
      _AuthEventLogin;
  const factory AuthEvent.registration({required SignUpData signUpData}) =
      _AuthEventRegistration;
  const factory AuthEvent.uploadAvatar({required File avatar}) =
      _AuthEventUploadAvatar;
}
