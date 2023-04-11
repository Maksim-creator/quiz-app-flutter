part of 'quizzes_bloc.dart';

@freezed
class QuizzesEvent with _$QuizzesEvent {
  const factory QuizzesEvent.getTopSelected() = _QuizzesEventGetTopSelected;
  const factory QuizzesEvent.getTopicsList({required String category}) =
      _QuizzesEventGetTopicsList;
  const factory QuizzesEvent.getQuestionsList(
      {required String topic,
      required int count}) = _QuizzesEventGetQuestionsList;
  const factory QuizzesEvent.getAllTopics({required BuildContext context}) =
      _QuizzesEventGetAllTopics;
}
