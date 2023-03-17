// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get badgeColor => throw _privateConstructorUsedError;
  String get borderColor => throw _privateConstructorUsedError;
  String get iconBackground => throw _privateConstructorUsedError;
  BigInt get bronze => throw _privateConstructorUsedError;
  BigInt get silver => throw _privateConstructorUsedError;
  BigInt get gold => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call(
      {String name,
      String title,
      String badgeColor,
      String borderColor,
      String iconBackground,
      BigInt bronze,
      BigInt silver,
      BigInt gold,
      String description,
      String icon});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? badgeColor = null,
    Object? borderColor = null,
    Object? iconBackground = null,
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      badgeColor: null == badgeColor
          ? _value.badgeColor
          : badgeColor // ignore: cast_nullable_to_non_nullable
              as String,
      borderColor: null == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String,
      iconBackground: null == iconBackground
          ? _value.iconBackground
          : iconBackground // ignore: cast_nullable_to_non_nullable
              as String,
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as BigInt,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as BigInt,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as BigInt,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$_BadgeCopyWith(_$_Badge value, $Res Function(_$_Badge) then) =
      __$$_BadgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String title,
      String badgeColor,
      String borderColor,
      String iconBackground,
      BigInt bronze,
      BigInt silver,
      BigInt gold,
      String description,
      String icon});
}

/// @nodoc
class __$$_BadgeCopyWithImpl<$Res> extends _$BadgeCopyWithImpl<$Res, _$_Badge>
    implements _$$_BadgeCopyWith<$Res> {
  __$$_BadgeCopyWithImpl(_$_Badge _value, $Res Function(_$_Badge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? badgeColor = null,
    Object? borderColor = null,
    Object? iconBackground = null,
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_Badge(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      badgeColor: null == badgeColor
          ? _value.badgeColor
          : badgeColor // ignore: cast_nullable_to_non_nullable
              as String,
      borderColor: null == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String,
      iconBackground: null == iconBackground
          ? _value.iconBackground
          : iconBackground // ignore: cast_nullable_to_non_nullable
              as String,
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as BigInt,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as BigInt,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as BigInt,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Badge implements _Badge {
  const _$_Badge(
      {required this.name,
      required this.title,
      required this.badgeColor,
      required this.borderColor,
      required this.iconBackground,
      required this.bronze,
      required this.silver,
      required this.gold,
      required this.description,
      required this.icon});

  factory _$_Badge.fromJson(Map<String, dynamic> json) =>
      _$$_BadgeFromJson(json);

  @override
  final String name;
  @override
  final String title;
  @override
  final String badgeColor;
  @override
  final String borderColor;
  @override
  final String iconBackground;
  @override
  final BigInt bronze;
  @override
  final BigInt silver;
  @override
  final BigInt gold;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'Badge(name: $name, title: $title, badgeColor: $badgeColor, borderColor: $borderColor, iconBackground: $iconBackground, bronze: $bronze, silver: $silver, gold: $gold, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Badge &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.badgeColor, badgeColor) ||
                other.badgeColor == badgeColor) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.iconBackground, iconBackground) ||
                other.iconBackground == iconBackground) &&
            (identical(other.bronze, bronze) || other.bronze == bronze) &&
            (identical(other.silver, silver) || other.silver == silver) &&
            (identical(other.gold, gold) || other.gold == gold) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, title, badgeColor,
      borderColor, iconBackground, bronze, silver, gold, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      __$$_BadgeCopyWithImpl<_$_Badge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BadgeToJson(
      this,
    );
  }
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {required final String name,
      required final String title,
      required final String badgeColor,
      required final String borderColor,
      required final String iconBackground,
      required final BigInt bronze,
      required final BigInt silver,
      required final BigInt gold,
      required final String description,
      required final String icon}) = _$_Badge;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$_Badge.fromJson;

  @override
  String get name;
  @override
  String get title;
  @override
  String get badgeColor;
  @override
  String get borderColor;
  @override
  String get iconBackground;
  @override
  BigInt get bronze;
  @override
  BigInt get silver;
  @override
  BigInt get gold;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      throw _privateConstructorUsedError;
}
