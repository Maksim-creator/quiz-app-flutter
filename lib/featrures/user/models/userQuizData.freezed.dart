// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userQuizData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserQuizData _$UserQuizDataFromJson(Map<String, dynamic> json) {
  return _UserQuizData.fromJson(json);
}

/// @nodoc
mixin _$UserQuizData {
  int get createdQuizzes => throw _privateConstructorUsedError;
  int get totalQuizzes => throw _privateConstructorUsedError;
  String get favoriteTopic => throw _privateConstructorUsedError;
  int get averageCompletion => throw _privateConstructorUsedError;
  int get totalPlayedQuizzes => throw _privateConstructorUsedError;
  int get quizzesWon => throw _privateConstructorUsedError;
  List<ChartData> get chartData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserQuizDataCopyWith<UserQuizData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserQuizDataCopyWith<$Res> {
  factory $UserQuizDataCopyWith(
          UserQuizData value, $Res Function(UserQuizData) then) =
      _$UserQuizDataCopyWithImpl<$Res, UserQuizData>;
  @useResult
  $Res call(
      {int createdQuizzes,
      int totalQuizzes,
      String favoriteTopic,
      int averageCompletion,
      int totalPlayedQuizzes,
      int quizzesWon,
      List<ChartData> chartData});
}

/// @nodoc
class _$UserQuizDataCopyWithImpl<$Res, $Val extends UserQuizData>
    implements $UserQuizDataCopyWith<$Res> {
  _$UserQuizDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdQuizzes = null,
    Object? totalQuizzes = null,
    Object? favoriteTopic = null,
    Object? averageCompletion = null,
    Object? totalPlayedQuizzes = null,
    Object? quizzesWon = null,
    Object? chartData = null,
  }) {
    return _then(_value.copyWith(
      createdQuizzes: null == createdQuizzes
          ? _value.createdQuizzes
          : createdQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuizzes: null == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteTopic: null == favoriteTopic
          ? _value.favoriteTopic
          : favoriteTopic // ignore: cast_nullable_to_non_nullable
              as String,
      averageCompletion: null == averageCompletion
          ? _value.averageCompletion
          : averageCompletion // ignore: cast_nullable_to_non_nullable
              as int,
      totalPlayedQuizzes: null == totalPlayedQuizzes
          ? _value.totalPlayedQuizzes
          : totalPlayedQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      quizzesWon: null == quizzesWon
          ? _value.quizzesWon
          : quizzesWon // ignore: cast_nullable_to_non_nullable
              as int,
      chartData: null == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserQuizDataCopyWith<$Res>
    implements $UserQuizDataCopyWith<$Res> {
  factory _$$_UserQuizDataCopyWith(
          _$_UserQuizData value, $Res Function(_$_UserQuizData) then) =
      __$$_UserQuizDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int createdQuizzes,
      int totalQuizzes,
      String favoriteTopic,
      int averageCompletion,
      int totalPlayedQuizzes,
      int quizzesWon,
      List<ChartData> chartData});
}

/// @nodoc
class __$$_UserQuizDataCopyWithImpl<$Res>
    extends _$UserQuizDataCopyWithImpl<$Res, _$_UserQuizData>
    implements _$$_UserQuizDataCopyWith<$Res> {
  __$$_UserQuizDataCopyWithImpl(
      _$_UserQuizData _value, $Res Function(_$_UserQuizData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdQuizzes = null,
    Object? totalQuizzes = null,
    Object? favoriteTopic = null,
    Object? averageCompletion = null,
    Object? totalPlayedQuizzes = null,
    Object? quizzesWon = null,
    Object? chartData = null,
  }) {
    return _then(_$_UserQuizData(
      createdQuizzes: null == createdQuizzes
          ? _value.createdQuizzes
          : createdQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuizzes: null == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteTopic: null == favoriteTopic
          ? _value.favoriteTopic
          : favoriteTopic // ignore: cast_nullable_to_non_nullable
              as String,
      averageCompletion: null == averageCompletion
          ? _value.averageCompletion
          : averageCompletion // ignore: cast_nullable_to_non_nullable
              as int,
      totalPlayedQuizzes: null == totalPlayedQuizzes
          ? _value.totalPlayedQuizzes
          : totalPlayedQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      quizzesWon: null == quizzesWon
          ? _value.quizzesWon
          : quizzesWon // ignore: cast_nullable_to_non_nullable
              as int,
      chartData: null == chartData
          ? _value._chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserQuizData implements _UserQuizData {
  const _$_UserQuizData(
      {required this.createdQuizzes,
      required this.totalQuizzes,
      required this.favoriteTopic,
      required this.averageCompletion,
      required this.totalPlayedQuizzes,
      required this.quizzesWon,
      required final List<ChartData> chartData})
      : _chartData = chartData;

  factory _$_UserQuizData.fromJson(Map<String, dynamic> json) =>
      _$$_UserQuizDataFromJson(json);

  @override
  final int createdQuizzes;
  @override
  final int totalQuizzes;
  @override
  final String favoriteTopic;
  @override
  final int averageCompletion;
  @override
  final int totalPlayedQuizzes;
  @override
  final int quizzesWon;
  final List<ChartData> _chartData;
  @override
  List<ChartData> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  @override
  String toString() {
    return 'UserQuizData(createdQuizzes: $createdQuizzes, totalQuizzes: $totalQuizzes, favoriteTopic: $favoriteTopic, averageCompletion: $averageCompletion, totalPlayedQuizzes: $totalPlayedQuizzes, quizzesWon: $quizzesWon, chartData: $chartData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserQuizData &&
            (identical(other.createdQuizzes, createdQuizzes) ||
                other.createdQuizzes == createdQuizzes) &&
            (identical(other.totalQuizzes, totalQuizzes) ||
                other.totalQuizzes == totalQuizzes) &&
            (identical(other.favoriteTopic, favoriteTopic) ||
                other.favoriteTopic == favoriteTopic) &&
            (identical(other.averageCompletion, averageCompletion) ||
                other.averageCompletion == averageCompletion) &&
            (identical(other.totalPlayedQuizzes, totalPlayedQuizzes) ||
                other.totalPlayedQuizzes == totalPlayedQuizzes) &&
            (identical(other.quizzesWon, quizzesWon) ||
                other.quizzesWon == quizzesWon) &&
            const DeepCollectionEquality()
                .equals(other._chartData, _chartData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdQuizzes,
      totalQuizzes,
      favoriteTopic,
      averageCompletion,
      totalPlayedQuizzes,
      quizzesWon,
      const DeepCollectionEquality().hash(_chartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserQuizDataCopyWith<_$_UserQuizData> get copyWith =>
      __$$_UserQuizDataCopyWithImpl<_$_UserQuizData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQuizDataToJson(
      this,
    );
  }
}

abstract class _UserQuizData implements UserQuizData {
  const factory _UserQuizData(
      {required final int createdQuizzes,
      required final int totalQuizzes,
      required final String favoriteTopic,
      required final int averageCompletion,
      required final int totalPlayedQuizzes,
      required final int quizzesWon,
      required final List<ChartData> chartData}) = _$_UserQuizData;

  factory _UserQuizData.fromJson(Map<String, dynamic> json) =
      _$_UserQuizData.fromJson;

  @override
  int get createdQuizzes;
  @override
  int get totalQuizzes;
  @override
  String get favoriteTopic;
  @override
  int get averageCompletion;
  @override
  int get totalPlayedQuizzes;
  @override
  int get quizzesWon;
  @override
  List<ChartData> get chartData;
  @override
  @JsonKey(ignore: true)
  _$$_UserQuizDataCopyWith<_$_UserQuizData> get copyWith =>
      throw _privateConstructorUsedError;
}
