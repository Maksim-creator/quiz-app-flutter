// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Battle _$BattleFromJson(Map<String, dynamic> json) {
  return _Battle.fromJson(json);
}

/// @nodoc
mixin _$Battle {
  String? get battleId => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get difficultyLevel => throw _privateConstructorUsedError;
  int get bid => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleCopyWith<Battle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleCopyWith<$Res> {
  factory $BattleCopyWith(Battle value, $Res Function(Battle) then) =
      _$BattleCopyWithImpl<$Res, Battle>;
  @useResult
  $Res call(
      {String? battleId,
      int? from,
      int to,
      String topic,
      String difficultyLevel,
      int bid,
      String? comment});
}

/// @nodoc
class _$BattleCopyWithImpl<$Res, $Val extends Battle>
    implements $BattleCopyWith<$Res> {
  _$BattleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battleId = freezed,
    Object? from = freezed,
    Object? to = null,
    Object? topic = null,
    Object? difficultyLevel = null,
    Object? bid = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      battleId: freezed == battleId
          ? _value.battleId
          : battleId // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattleCopyWith<$Res> implements $BattleCopyWith<$Res> {
  factory _$$_BattleCopyWith(_$_Battle value, $Res Function(_$_Battle) then) =
      __$$_BattleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? battleId,
      int? from,
      int to,
      String topic,
      String difficultyLevel,
      int bid,
      String? comment});
}

/// @nodoc
class __$$_BattleCopyWithImpl<$Res>
    extends _$BattleCopyWithImpl<$Res, _$_Battle>
    implements _$$_BattleCopyWith<$Res> {
  __$$_BattleCopyWithImpl(_$_Battle _value, $Res Function(_$_Battle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battleId = freezed,
    Object? from = freezed,
    Object? to = null,
    Object? topic = null,
    Object? difficultyLevel = null,
    Object? bid = null,
    Object? comment = freezed,
  }) {
    return _then(_$_Battle(
      battleId: freezed == battleId
          ? _value.battleId
          : battleId // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Battle implements _Battle {
  const _$_Battle(
      {this.battleId,
      this.from,
      required this.to,
      required this.topic,
      required this.difficultyLevel,
      required this.bid,
      this.comment});

  factory _$_Battle.fromJson(Map<String, dynamic> json) =>
      _$$_BattleFromJson(json);

  @override
  final String? battleId;
  @override
  final int? from;
  @override
  final int to;
  @override
  final String topic;
  @override
  final String difficultyLevel;
  @override
  final int bid;
  @override
  final String? comment;

  @override
  String toString() {
    return 'Battle(battleId: $battleId, from: $from, to: $to, topic: $topic, difficultyLevel: $difficultyLevel, bid: $bid, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Battle &&
            (identical(other.battleId, battleId) ||
                other.battleId == battleId) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.bid, bid) || other.bid == bid) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, battleId, from, to, topic, difficultyLevel, bid, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleCopyWith<_$_Battle> get copyWith =>
      __$$_BattleCopyWithImpl<_$_Battle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BattleToJson(
      this,
    );
  }
}

abstract class _Battle implements Battle {
  const factory _Battle(
      {final String? battleId,
      final int? from,
      required final int to,
      required final String topic,
      required final String difficultyLevel,
      required final int bid,
      final String? comment}) = _$_Battle;

  factory _Battle.fromJson(Map<String, dynamic> json) = _$_Battle.fromJson;

  @override
  String? get battleId;
  @override
  int? get from;
  @override
  int get to;
  @override
  String get topic;
  @override
  String get difficultyLevel;
  @override
  int get bid;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_BattleCopyWith<_$_Battle> get copyWith =>
      throw _privateConstructorUsedError;
}
