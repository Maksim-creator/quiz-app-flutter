// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chartData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartData _$ChartDataFromJson(Map<String, dynamic> json) {
  return _ChartData.fromJson(json);
}

/// @nodoc
mixin _$ChartData {
  String get category => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get averageTotalQuestions => throw _privateConstructorUsedError;
  String get averageAnsweredQuestions => throw _privateConstructorUsedError;
  String get averageDonePercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartDataCopyWith<ChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataCopyWith<$Res> {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) then) =
      _$ChartDataCopyWithImpl<$Res, ChartData>;
  @useResult
  $Res call(
      {String category,
      String color,
      String averageTotalQuestions,
      String averageAnsweredQuestions,
      String averageDonePercentage});
}

/// @nodoc
class _$ChartDataCopyWithImpl<$Res, $Val extends ChartData>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? color = null,
    Object? averageTotalQuestions = null,
    Object? averageAnsweredQuestions = null,
    Object? averageDonePercentage = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      averageTotalQuestions: null == averageTotalQuestions
          ? _value.averageTotalQuestions
          : averageTotalQuestions // ignore: cast_nullable_to_non_nullable
              as String,
      averageAnsweredQuestions: null == averageAnsweredQuestions
          ? _value.averageAnsweredQuestions
          : averageAnsweredQuestions // ignore: cast_nullable_to_non_nullable
              as String,
      averageDonePercentage: null == averageDonePercentage
          ? _value.averageDonePercentage
          : averageDonePercentage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$$_ChartDataCopyWith(
          _$_ChartData value, $Res Function(_$_ChartData) then) =
      __$$_ChartDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      String color,
      String averageTotalQuestions,
      String averageAnsweredQuestions,
      String averageDonePercentage});
}

/// @nodoc
class __$$_ChartDataCopyWithImpl<$Res>
    extends _$ChartDataCopyWithImpl<$Res, _$_ChartData>
    implements _$$_ChartDataCopyWith<$Res> {
  __$$_ChartDataCopyWithImpl(
      _$_ChartData _value, $Res Function(_$_ChartData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? color = null,
    Object? averageTotalQuestions = null,
    Object? averageAnsweredQuestions = null,
    Object? averageDonePercentage = null,
  }) {
    return _then(_$_ChartData(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      averageTotalQuestions: null == averageTotalQuestions
          ? _value.averageTotalQuestions
          : averageTotalQuestions // ignore: cast_nullable_to_non_nullable
              as String,
      averageAnsweredQuestions: null == averageAnsweredQuestions
          ? _value.averageAnsweredQuestions
          : averageAnsweredQuestions // ignore: cast_nullable_to_non_nullable
              as String,
      averageDonePercentage: null == averageDonePercentage
          ? _value.averageDonePercentage
          : averageDonePercentage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartData implements _ChartData {
  const _$_ChartData(
      {required this.category,
      required this.color,
      required this.averageTotalQuestions,
      required this.averageAnsweredQuestions,
      required this.averageDonePercentage});

  factory _$_ChartData.fromJson(Map<String, dynamic> json) =>
      _$$_ChartDataFromJson(json);

  @override
  final String category;
  @override
  final String color;
  @override
  final String averageTotalQuestions;
  @override
  final String averageAnsweredQuestions;
  @override
  final String averageDonePercentage;

  @override
  String toString() {
    return 'ChartData(category: $category, color: $color, averageTotalQuestions: $averageTotalQuestions, averageAnsweredQuestions: $averageAnsweredQuestions, averageDonePercentage: $averageDonePercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartData &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.averageTotalQuestions, averageTotalQuestions) ||
                other.averageTotalQuestions == averageTotalQuestions) &&
            (identical(
                    other.averageAnsweredQuestions, averageAnsweredQuestions) ||
                other.averageAnsweredQuestions == averageAnsweredQuestions) &&
            (identical(other.averageDonePercentage, averageDonePercentage) ||
                other.averageDonePercentage == averageDonePercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, color,
      averageTotalQuestions, averageAnsweredQuestions, averageDonePercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartDataCopyWith<_$_ChartData> get copyWith =>
      __$$_ChartDataCopyWithImpl<_$_ChartData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartDataToJson(
      this,
    );
  }
}

abstract class _ChartData implements ChartData {
  const factory _ChartData(
      {required final String category,
      required final String color,
      required final String averageTotalQuestions,
      required final String averageAnsweredQuestions,
      required final String averageDonePercentage}) = _$_ChartData;

  factory _ChartData.fromJson(Map<String, dynamic> json) =
      _$_ChartData.fromJson;

  @override
  String get category;
  @override
  String get color;
  @override
  String get averageTotalQuestions;
  @override
  String get averageAnsweredQuestions;
  @override
  String get averageDonePercentage;
  @override
  @JsonKey(ignore: true)
  _$$_ChartDataCopyWith<_$_ChartData> get copyWith =>
      throw _privateConstructorUsedError;
}
