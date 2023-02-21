import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String topic,
    required String icon,
    required String category,
    required List<Question> questions,
    required int selectedTimes,
    required int author,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

@freezed
class TopSelected with _$TopSelected {
  const factory TopSelected({
    required String id,
    required String category,
    required String icon,
    required String topic,
    required int quizzesCount,
  }) = _TopSelected;

  factory TopSelected.fromJson(Map<String, dynamic> json) =>
      _$TopSelectedFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String question,
    required String? description,
    required Answers answers,
    required bool multipleCorrectAnswers,
    required CorrectAnswers correctAnswers,
    required String? explanation,
    required String? tip,
    required String category,
    required String difficulty,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Answers with _$Answers {
  const factory Answers({
    required String a,
    required String b,
    required String? c,
    required String? d,
  }) = _Answers;

  factory Answers.fromJson(Map<String, dynamic> json) =>
      _$AnswersFromJson(json);
}

@freezed
class CorrectAnswers with _$CorrectAnswers {
  const factory CorrectAnswers(
      {required bool a,
      required bool b,
      required bool? c,
      required bool? d}) = _CorrectAnswers;

  factory CorrectAnswers.fromJson(Map<String, dynamic> json) =>
      _$CorrectAnswersFromJson(json);
}
