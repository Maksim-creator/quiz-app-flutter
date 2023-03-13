import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/auth/models/user_data.dart';
import 'package:quizz_app/featrures/auth/utils/entities.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';

part 'auth_bloc.freezed.dart';
// part 'auth_bloc.g.dart';
part 'auth_event.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required UserGameData data,
    required String email,
    required String token,
    required String name,
    required String avatar,
    @Default(false) bool isLoading,
  }) = _AuthState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  AuthBloc({required this.authRepo})
      : super(const AuthState(
            email: '',
            token: '',
            name: '',
            avatar: '',
            data: UserGameData(
                level: 0, totalExperience: 0, rank: 0, balance: 0)));
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(login: (signInData) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      UserData userLoaded = await authRepo.signIn(signInData);

      final updatedState = currentState.copyWith(
          name: userLoaded.name,
          email: userLoaded.email,
          avatar: userLoaded.avatar,
          token: userLoaded.token,
          isLoading: false,
          data: userLoaded.data);
      yield updatedState;
    }, registration: (signUpData) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      UserData userLoaded = await authRepo.signUp(signUpData);

      final updatedState = currentState.copyWith(
          name: userLoaded.name,
          email: userLoaded.email,
          avatar: userLoaded.avatar,
          token: userLoaded.token,
          isLoading: false,
          data: userLoaded.data);
      yield updatedState;
    }, uploadAvatar: (avatarFile) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      String avatar = await authRepo.uploadUserAvatar(avatarFile);

      final updatedState =
          currentState.copyWith(avatar: avatar, isLoading: false);

      yield updatedState;
    });
  }
}
