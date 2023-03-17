// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userQuizData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserQuizData _$$_UserQuizDataFromJson(Map<String, dynamic> json) =>
    _$_UserQuizData(
      createdQuizzes: json['createdQuizzes'] as int,
      totalQuizzes: json['totalQuizzes'] as int,
      favoriteTopic: json['favoriteTopic'] as String,
      averageCompletion: json['averageCompletion'] as int,
      totalPlayedQuizzes: json['totalPlayedQuizzes'] as int,
      quizzesWon: json['quizzesWon'] as int,
      chartData: (json['chartData'] as List<dynamic>)
          .map((e) => ChartData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserQuizDataToJson(_$_UserQuizData instance) =>
    <String, dynamic>{
      'createdQuizzes': instance.createdQuizzes,
      'totalQuizzes': instance.totalQuizzes,
      'favoriteTopic': instance.favoriteTopic,
      'averageCompletion': instance.averageCompletion,
      'totalPlayedQuizzes': instance.totalPlayedQuizzes,
      'quizzesWon': instance.quizzesWon,
      'chartData': instance.chartData,
    };
