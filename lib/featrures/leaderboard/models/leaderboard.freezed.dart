// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Leader _$LeaderFromJson(Map<String, dynamic> json) {
  return _Leader.fromJson(json);
}

/// @nodoc
mixin _$Leader {
  String get avatar => throw _privateConstructorUsedError;
  int get totalExperience => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderCopyWith<Leader> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderCopyWith<$Res> {
  factory $LeaderCopyWith(Leader value, $Res Function(Leader) then) =
      _$LeaderCopyWithImpl<$Res, Leader>;
  @useResult
  $Res call({String avatar, int totalExperience, String name});
}

/// @nodoc
class _$LeaderCopyWithImpl<$Res, $Val extends Leader>
    implements $LeaderCopyWith<$Res> {
  _$LeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? totalExperience = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaderCopyWith<$Res> implements $LeaderCopyWith<$Res> {
  factory _$$_LeaderCopyWith(_$_Leader value, $Res Function(_$_Leader) then) =
      __$$_LeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatar, int totalExperience, String name});
}

/// @nodoc
class __$$_LeaderCopyWithImpl<$Res>
    extends _$LeaderCopyWithImpl<$Res, _$_Leader>
    implements _$$_LeaderCopyWith<$Res> {
  __$$_LeaderCopyWithImpl(_$_Leader _value, $Res Function(_$_Leader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? totalExperience = null,
    Object? name = null,
  }) {
    return _then(_$_Leader(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Leader with DiagnosticableTreeMixin implements _Leader {
  const _$_Leader(
      {required this.avatar,
      required this.totalExperience,
      required this.name});

  factory _$_Leader.fromJson(Map<String, dynamic> json) =>
      _$$_LeaderFromJson(json);

  @override
  final String avatar;
  @override
  final int totalExperience;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Leader(avatar: $avatar, totalExperience: $totalExperience, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Leader'))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('totalExperience', totalExperience))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Leader &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.totalExperience, totalExperience) ||
                other.totalExperience == totalExperience) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, totalExperience, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderCopyWith<_$_Leader> get copyWith =>
      __$$_LeaderCopyWithImpl<_$_Leader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaderToJson(
      this,
    );
  }
}

abstract class _Leader implements Leader {
  const factory _Leader(
      {required final String avatar,
      required final int totalExperience,
      required final String name}) = _$_Leader;

  factory _Leader.fromJson(Map<String, dynamic> json) = _$_Leader.fromJson;

  @override
  String get avatar;
  @override
  int get totalExperience;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderCopyWith<_$_Leader> get copyWith =>
      throw _privateConstructorUsedError;
}
