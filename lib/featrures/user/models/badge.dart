import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';
part 'badge.g.dart';

@freezed
class Badge with _$Badge {
  const factory Badge(
      {required String name,
      required String title,
      required String badgeColor,
      required String borderColor,
      required String iconBackground,
      required BigInt bronze,
      required BigInt silver,
      required BigInt gold,
      required String description,
      required String icon}) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
