// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recentQuiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentQuiz _$$_RecentQuizFromJson(Map<String, dynamic> json) =>
    _$_RecentQuiz(
      topic: json['topic'] as String,
      id: json['id'] as String,
      icon: json['icon'] as String,
      donePercentage: json['donePercentage'] as int,
    );

Map<String, dynamic> _$$_RecentQuizToJson(_$_RecentQuiz instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'id': instance.id,
      'icon': instance.icon,
      'donePercentage': instance.donePercentage,
    };
