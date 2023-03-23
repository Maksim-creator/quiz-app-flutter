// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recentQuiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentQuiz _$RecentQuizFromJson(Map<String, dynamic> json) {
  return _RecentQuiz.fromJson(json);
}

/// @nodoc
mixin _$RecentQuiz {
  String get topic => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get donePercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentQuizCopyWith<RecentQuiz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentQuizCopyWith<$Res> {
  factory $RecentQuizCopyWith(
          RecentQuiz value, $Res Function(RecentQuiz) then) =
      _$RecentQuizCopyWithImpl<$Res, RecentQuiz>;
  @useResult
  $Res call({String topic, String id, String icon, int donePercentage});
}

/// @nodoc
class _$RecentQuizCopyWithImpl<$Res, $Val extends RecentQuiz>
    implements $RecentQuizCopyWith<$Res> {
  _$RecentQuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? id = null,
    Object? icon = null,
    Object? donePercentage = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      donePercentage: null == donePercentage
          ? _value.donePercentage
          : donePercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentQuizCopyWith<$Res>
    implements $RecentQuizCopyWith<$Res> {
  factory _$$_RecentQuizCopyWith(
          _$_RecentQuiz value, $Res Function(_$_RecentQuiz) then) =
      __$$_RecentQuizCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String topic, String id, String icon, int donePercentage});
}

/// @nodoc
class __$$_RecentQuizCopyWithImpl<$Res>
    extends _$RecentQuizCopyWithImpl<$Res, _$_RecentQuiz>
    implements _$$_RecentQuizCopyWith<$Res> {
  __$$_RecentQuizCopyWithImpl(
      _$_RecentQuiz _value, $Res Function(_$_RecentQuiz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? id = null,
    Object? icon = null,
    Object? donePercentage = null,
  }) {
    return _then(_$_RecentQuiz(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      donePercentage: null == donePercentage
          ? _value.donePercentage
          : donePercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentQuiz implements _RecentQuiz {
  const _$_RecentQuiz(
      {required this.topic,
      required this.id,
      required this.icon,
      required this.donePercentage});

  factory _$_RecentQuiz.fromJson(Map<String, dynamic> json) =>
      _$$_RecentQuizFromJson(json);

  @override
  final String topic;
  @override
  final String id;
  @override
  final String icon;
  @override
  final int donePercentage;

  @override
  String toString() {
    return 'RecentQuiz(topic: $topic, id: $id, icon: $icon, donePercentage: $donePercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentQuiz &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.donePercentage, donePercentage) ||
                other.donePercentage == donePercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, id, icon, donePercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentQuizCopyWith<_$_RecentQuiz> get copyWith =>
      __$$_RecentQuizCopyWithImpl<_$_RecentQuiz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentQuizToJson(
      this,
    );
  }
}

abstract class _RecentQuiz implements RecentQuiz {
  const factory _RecentQuiz(
      {required final String topic,
      required final String id,
      required final String icon,
      required final int donePercentage}) = _$_RecentQuiz;

  factory _RecentQuiz.fromJson(Map<String, dynamic> json) =
      _$_RecentQuiz.fromJson;

  @override
  String get topic;
  @override
  String get id;
  @override
  String get icon;
  @override
  int get donePercentage;
  @override
  @JsonKey(ignore: true)
  _$$_RecentQuizCopyWith<_$_RecentQuiz> get copyWith =>
      throw _privateConstructorUsedError;
}
