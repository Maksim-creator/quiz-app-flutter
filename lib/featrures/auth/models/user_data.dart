import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
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
