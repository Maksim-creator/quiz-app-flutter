part of 'quizzes_bloc.dart';

@freezed
class QuizzesState with _$QuizzesState {
  const factory QuizzesState.loading() = QuizzesStateLoading;
  const factory QuizzesState.loaded({TopSelected? topSelected}) =
      QuizzesStateLoaded;
  const factory QuizzesState.error() = QuizzesStateError;
}
