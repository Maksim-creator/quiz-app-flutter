// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chartData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChartData _$$_ChartDataFromJson(Map<String, dynamic> json) => _$_ChartData(
      category: json['category'] as String,
      color: json['color'] as String,
      averageTotalQuestions: json['averageTotalQuestions'] as String,
      averageAnsweredQuestions: json['averageAnsweredQuestions'] as String,
      averageDonePercentage: json['averageDonePercentage'] as String,
    );

Map<String, dynamic> _$$_ChartDataToJson(_$_ChartData instance) =>
    <String, dynamic>{
      'category': instance.category,
      'color': instance.color,
      'averageTotalQuestions': instance.averageTotalQuestions,
      'averageAnsweredQuestions': instance.averageAnsweredQuestions,
      'averageDonePercentage': instance.averageDonePercentage,
    };
