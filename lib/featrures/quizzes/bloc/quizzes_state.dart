part of 'quizzes_bloc.dart';

@freezed
abstract class QuizzesState with _$QuizzesState {
  const factory QuizzesState.loading() = QuizzesStateLoading;
  const factory QuizzesState.topSelectedLoaded(
      {required TopSelected topSelected}) = QuizzesStateTopSelectedLoaded;
  const factory QuizzesState.topicsLoaded({required List<Topic> topics}) =
      QuizzesStateTopicsLoaded;
  const factory QuizzesState.error() = QuizzesStateError;
}
