// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as int,
      category: json['category'] as String,
      selectedTimes: json['selectedTimes'] as int,
      icon: json['icon'] as String,
      quizzesCount: json['quizzesCount'] as int,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'selectedTimes': instance.selectedTimes,
      'icon': instance.icon,
      'quizzesCount': instance.quizzesCount,
      'color': instance.color,
    };
