// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Battle _$$_BattleFromJson(Map<String, dynamic> json) => _$_Battle(
      battleId: json['battleId'] as String?,
      from: json['from'] as int?,
      to: json['to'] as int,
      topic: json['topic'] as String,
      difficultyLevel: json['difficultyLevel'] as String,
      bid: json['bid'] as int,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_BattleToJson(_$_Battle instance) => <String, dynamic>{
      'battleId': instance.battleId,
      'from': instance.from,
      'to': instance.to,
      'topic': instance.topic,
      'difficultyLevel': instance.difficultyLevel,
      'bid': instance.bid,
      'comment': instance.comment,
    };
