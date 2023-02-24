// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      id: json['id'] as String,
      topic: json['topic'] as String,
      icon: json['icon'] as String,
      category: json['category'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedTimes: json['selectedTimes'] as int,
      author: json['author'] as int,
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'icon': instance.icon,
      'category': instance.category,
      'questions': instance.questions,
      'selectedTimes': instance.selectedTimes,
      'author': instance.author,
    };

_$_TopSelected _$$_TopSelectedFromJson(Map<String, dynamic> json) =>
    _$_TopSelected(
      id: json['id'] as String,
      category: json['category'] as String,
      icon: json['icon'] as String,
      topic: json['topic'] as String,
      quizzesCount: json['quizzesCount'] as int,
    );

Map<String, dynamic> _$$_TopSelectedToJson(_$_TopSelected instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'icon': instance.icon,
      'topic': instance.topic,
      'quizzesCount': instance.quizzesCount,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      question: json['question'] as String,
      description: json['description'] as String?,
      answers: Answers.fromJson(json['answers'] as Map<String, dynamic>),
      multipleCorrectAnswers: json['multipleCorrectAnswers'] as bool,
      correctAnswers: CorrectAnswers.fromJson(
          json['correctAnswers'] as Map<String, dynamic>),
      explanation: json['explanation'] as String?,
      tip: json['tip'] as String?,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'description': instance.description,
      'answers': instance.answers,
      'multipleCorrectAnswers': instance.multipleCorrectAnswers,
      'correctAnswers': instance.correctAnswers,
      'explanation': instance.explanation,
      'tip': instance.tip,
      'category': instance.category,
      'difficulty': instance.difficulty,
    };

_$_Answers _$$_AnswersFromJson(Map<String, dynamic> json) => _$_Answers(
      a: json['a'] as String,
      b: json['b'] as String,
      c: json['c'] as String?,
      d: json['d'] as String?,
    );

Map<String, dynamic> _$$_AnswersToJson(_$_Answers instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
    };

_$_CorrectAnswers _$$_CorrectAnswersFromJson(Map<String, dynamic> json) =>
    _$_CorrectAnswers(
      a: json['a'] as bool,
      b: json['b'] as bool,
      c: json['c'] as bool?,
      d: json['d'] as bool?,
    );

Map<String, dynamic> _$$_CorrectAnswersToJson(_$_CorrectAnswers instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
    };

_$_Topic _$$_TopicFromJson(Map<String, dynamic> json) => _$_Topic(
      id: json['id'] as String,
      category: json['category'] as String,
      topic: json['topic'] as String,
      icon: json['icon'] as String,
      author: json['author'] as String,
      selectedTimes: json['selectedTimes'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'topic': instance.topic,
      'icon': instance.icon,
      'author': instance.author,
      'selectedTimes': instance.selectedTimes,
      'description': instance.description,
    };
