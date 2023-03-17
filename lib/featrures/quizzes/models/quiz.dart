import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required int id,
    required String topic,
    required String icon,
    required String category,
    required List<Question> questions,
    required int selectedTimes,
    required String author,
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
    required int id,
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

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String id,
    required String category,
    required String topic,
    required String icon,
    required String author,
    required int selectedTimes,
    required String description,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class QuizScreenArgs with _$QuizScreenArgs {
  const factory QuizScreenArgs({
    required String topic,
    required int count,
  }) = _QuizScreenArgs;

  factory QuizScreenArgs.fromJson(Map<String, dynamic> json) =>
      _$QuizScreenArgsFromJson(json);
}

@freezed
class ReviewQuizScreenArgs with _$ReviewQuizScreenArgs {
  const factory ReviewQuizScreenArgs({
    required List<Question> questions,
    required int score,
    required int skipped,
    required int incorrectAnswers,
    required String topic,
  }) = _ReviewQuizScreenArgs;

  factory ReviewQuizScreenArgs.fromJson(Map<String, dynamic> json) =>
      _$ReviewQuizScreenArgsFromJson(json);
}

@freezed
class CompletedQuiz with _$CompletedQuiz {
  const factory CompletedQuiz({
    required String category,
    required int donePercentage,
    required int questionsTotal,
    required int questionsAnswered,
  }) = _CompletedQuiz;

  factory CompletedQuiz.fromJson(Map<String, dynamic> json) =>
      _$CompletedQuizFromJson(json);
}
