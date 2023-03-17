import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/user/models/chartData.dart';
import 'package:quizz_app/featrures/user/models/userQuizData.dart';

import '../../repositories/user_repo.dart';
import '../models/badge.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required List<Badge> badges,
    required UserQuizData quizData,
    @Default(false) bool isLoading,
  }) = _UserState;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo userRepo;
  UserBloc({required this.userRepo})
      : super(const UserState(
            badges: [],
            quizData: UserQuizData(
                createdQuizzes: 0,
                totalQuizzes: 0,
                favoriteTopic: '',
                totalPlayedQuizzes: 0,
                averageCompletion: 0,
                quizzesWon: 0,
                chartData: [])));

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.when(getBadges: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      List<Badge> badges = await userRepo.getUserBadges();

      final updatedState =
          loadingState.copyWith(isLoading: false, badges: badges);

      yield updatedState;
    }, getUserQuizDetails: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      UserQuizData data = await userRepo.getUserQuizData();

      final updatedState =
          loadingState.copyWith(isLoading: false, quizData: data);

      yield updatedState;
    });
  }
}
