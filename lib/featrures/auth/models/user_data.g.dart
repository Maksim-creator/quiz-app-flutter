// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      id: json['id'] as int,
      data: UserGameData.fromJson(json['data'] as Map<String, dynamic>),
      email: json['email'] as String,
      token: json['token'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'email': instance.email,
      'token': instance.token,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_$_UserGameData _$$_UserGameDataFromJson(Map<String, dynamic> json) =>
    _$_UserGameData(
      level: json['level'] as int,
      totalExperience: json['totalExperience'] as int,
      rank: json['rank'] as int,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_UserGameDataToJson(_$_UserGameData instance) =>
    <String, dynamic>{
      'level': instance.level,
      'totalExperience': instance.totalExperience,
      'rank': instance.rank,
      'balance': instance.balance,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      totalExperience: json['totalExperience'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'totalExperience': instance.totalExperience,
    };
