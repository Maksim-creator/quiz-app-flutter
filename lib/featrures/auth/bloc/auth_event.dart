part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
      {required SignInData signInData,
      required BuildContext context}) = _AuthEventLogin;
  const factory AuthEvent.registration(
      {required SignUpData signUpData,
      required BuildContext context}) = _AuthEventRegistration;
  const factory AuthEvent.uploadAvatar({required File avatar}) =
      _AuthEventUploadAvatar;
  const factory AuthEvent.updateUsername(
      {required String username,
      required BuildContext context}) = _AuthEventUpdateUsername;
}
