import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/auth/models/user_data.dart';
import 'package:quizz_app/featrures/auth/repositories/auth_repo.dart';

import '../../../api/entities.dart';

part 'auth_bloc.freezed.dart';
// part 'auth_bloc.g.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  AuthBloc({required this.authRepo}) : super(const AuthState.loading()) {
    on<AuthEventLogin>((event, emit) async {
      emit(const AuthState.loading());

      try {
        UserData userLoaded = await authRepo.signIn(event.signInData);

        emit(AuthState.loaded(userData: userLoaded));
      } catch (e) {
        emit(const AuthState.error());
      }
    });
    on<AuthEventRegistration>((event, emit) async {
      emit(const AuthState.loading());

      try {
        UserData userData = await authRepo.signUp(event.signUpData);
        emit(AuthState.loaded(userData: userData));
      } catch (e) {
        emit(const AuthState.error());
      }
    });
  }
}
