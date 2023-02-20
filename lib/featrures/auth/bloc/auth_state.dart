part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.loaded({required UserData userData}) =
      AuthStateLoaded;
  const factory AuthState.error() = AuthStateError;
}
