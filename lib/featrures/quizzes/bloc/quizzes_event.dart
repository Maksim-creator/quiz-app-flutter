part of 'quizzes_bloc.dart';

@freezed
class QuizzesEvent with _$QuizzesEvent {
  const factory QuizzesEvent.getTopSelected() = QuizzesEventGetTopSelected;
  const factory QuizzesEvent.getTopicsList({required String category}) =
      QuizzesEventGetTopicsList;
}
