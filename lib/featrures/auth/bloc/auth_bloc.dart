import 'dart:io';
import 'package:either_dart/src/either.dart';
import 'package:flutter/material.dart';
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
    @Default(false) bool isAvatarLoading,
    @Default(false) bool isUsernameLoading,
    @Default('') String error,
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
    yield* event.when(login: (signInData, context) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      Either<String, UserData> userLoaded = await authRepo.signIn(signInData);
      yield* userLoaded.fold((error) async* {
        final updatedState = currentState.copyWith(
          error: error,
          isLoading: false,
        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red.shade600,
          duration: const Duration(seconds: 2),
          content: Text(error),
        ));
        yield updatedState;
      }, (user) async* {
        final updatedState = currentState.copyWith(
            name: user.name,
            email: user.email,
            avatar: user.avatar,
            token: user.token,
            error: '',
            isLoading: false,
            data: user.data);

        Navigator.pushReplacementNamed(context, '/main_screen');

        yield updatedState;
      });
    }, registration: (signUpData, context) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      Either<String, UserData> userLoaded = await authRepo.signUp(signUpData);

      yield* userLoaded.fold((error) async* {
        final updatedState = currentState.copyWith(
          error: error,
          isLoading: false,
        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red.shade600,
          duration: const Duration(seconds: 2),
          content: Text(error),
        ));
        yield updatedState;
      }, (user) async* {
        final updatedState = currentState.copyWith(
            name: user.name,
            email: user.email,
            avatar: user.avatar,
            token: user.token,
            error: '',
            isLoading: false,
            data: user.data);

        Navigator.pushReplacementNamed(context, '/main_screen');

        yield updatedState;
      });
    }, uploadAvatar: (avatarFile) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isAvatarLoading: true);
      yield loadingState;

      String avatar = await authRepo.uploadUserAvatar(avatarFile);

      final updatedState =
          currentState.copyWith(avatar: avatar, isAvatarLoading: false);

      yield updatedState;
    }, updateUsername: (newUsername, context) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isUsernameLoading: true);

      yield loadingState;

      Either<String, String> updatedUsername =
          await authRepo.updateUsername(newUsername);

      yield* updatedUsername.fold((error) async* {
        final updatedState = currentState.copyWith(
          error: error,
          isUsernameLoading: false,
        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red.shade600,
          duration: const Duration(seconds: 2),
          content: Text(error),
        ));
        yield updatedState;
      }, (updatedUsername) async* {
        final updatedState = loadingState.copyWith(
            isUsernameLoading: false, name: updatedUsername);
        yield updatedState;
      });
    });
  }
}
