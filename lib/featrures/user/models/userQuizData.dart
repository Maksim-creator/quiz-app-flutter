import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/featrures/user/models/chartData.dart';

part 'userQuizData.freezed.dart';
part 'userQuizData.g.dart';

@freezed
class UserQuizData with _$UserQuizData {
  const factory UserQuizData(
      {required int createdQuizzes,
      required int totalQuizzes,
      required String favoriteTopic,
      required int averageCompletion,
      required int totalPlayedQuizzes,
      required int quizzesWon,
      required List<ChartData> chartData}) = _UserQuizData;

  factory UserQuizData.fromJson(Map<String, dynamic> json) =>
      _$UserQuizDataFromJson(json);
}
