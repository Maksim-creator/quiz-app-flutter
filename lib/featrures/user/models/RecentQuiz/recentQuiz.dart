import 'package:freezed_annotation/freezed_annotation.dart';

part 'recentQuiz.freezed.dart';
part 'recentQuiz.g.dart';

@freezed
class RecentQuiz with _$RecentQuiz {
  const factory RecentQuiz(
      {required String topic,
      required String id,
      required String icon,
      required int donePercentage}) = _RecentQuiz;

  factory RecentQuiz.fromJson(Map<String, dynamic> json) =>
      _$RecentQuizFromJson(json);
}
