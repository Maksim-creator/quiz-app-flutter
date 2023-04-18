import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required int id,
    required UserGameData data,
    required String email,
    required String token,
    required String name,
    required String avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserGameData with _$UserGameData {
  const factory UserGameData({
    required int level,
    required int totalExperience,
    required int rank,
    required int balance,
  }) = _UserGameData;

  factory UserGameData.fromJson(Map<String, dynamic> json) =>
      _$UserGameDataFromJson(json);
}

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState({
    UserGameData? data,
    String? email,
    String? token,
    String? name,
    String? avatar,
  }) = _AuthBlocState;
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String avatar,
    required int totalExperience,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
