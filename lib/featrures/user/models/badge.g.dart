// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Badge _$$_BadgeFromJson(Map<String, dynamic> json) => _$_Badge(
      name: json['name'] as String,
      title: json['title'] as String,
      badgeColor: json['badgeColor'] as String,
      borderColor: json['borderColor'] as String,
      iconBackground: json['iconBackground'] as String,
      bronze: BigInt.parse(json['bronze'] as String),
      silver: BigInt.parse(json['silver'] as String),
      gold: BigInt.parse(json['gold'] as String),
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_BadgeToJson(_$_Badge instance) => <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'badgeColor': instance.badgeColor,
      'borderColor': instance.borderColor,
      'iconBackground': instance.iconBackground,
      'bronze': instance.bronze.toString(),
      'silver': instance.silver.toString(),
      'gold': instance.gold.toString(),
      'description': instance.description,
      'icon': instance.icon,
    };
