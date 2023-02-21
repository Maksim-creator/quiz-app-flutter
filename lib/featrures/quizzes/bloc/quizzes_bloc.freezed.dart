// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizzes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizzesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesEventGetTopSelected value) getTopSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesEventGetTopSelected value)? getTopSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesEventGetTopSelected value)? getTopSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzesEventCopyWith<$Res> {
  factory $QuizzesEventCopyWith(
          QuizzesEvent value, $Res Function(QuizzesEvent) then) =
      _$QuizzesEventCopyWithImpl<$Res, QuizzesEvent>;
}

/// @nodoc
class _$QuizzesEventCopyWithImpl<$Res, $Val extends QuizzesEvent>
    implements $QuizzesEventCopyWith<$Res> {
  _$QuizzesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizzesEventGetTopSelectedCopyWith<$Res> {
  factory _$$QuizzesEventGetTopSelectedCopyWith(
          _$QuizzesEventGetTopSelected value,
          $Res Function(_$QuizzesEventGetTopSelected) then) =
      __$$QuizzesEventGetTopSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesEventGetTopSelectedCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$QuizzesEventGetTopSelected>
    implements _$$QuizzesEventGetTopSelectedCopyWith<$Res> {
  __$$QuizzesEventGetTopSelectedCopyWithImpl(
      _$QuizzesEventGetTopSelected _value,
      $Res Function(_$QuizzesEventGetTopSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesEventGetTopSelected implements QuizzesEventGetTopSelected {
  const _$QuizzesEventGetTopSelected();

  @override
  String toString() {
    return 'QuizzesEvent.getTopSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesEventGetTopSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
  }) {
    return getTopSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
  }) {
    return getTopSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    required TResult orElse(),
  }) {
    if (getTopSelected != null) {
      return getTopSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesEventGetTopSelected value) getTopSelected,
  }) {
    return getTopSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesEventGetTopSelected value)? getTopSelected,
  }) {
    return getTopSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesEventGetTopSelected value)? getTopSelected,
    required TResult orElse(),
  }) {
    if (getTopSelected != null) {
      return getTopSelected(this);
    }
    return orElse();
  }
}

abstract class QuizzesEventGetTopSelected implements QuizzesEvent {
  const factory QuizzesEventGetTopSelected() = _$QuizzesEventGetTopSelected;
}

/// @nodoc
mixin _$QuizzesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected? topSelected) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected? topSelected)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected? topSelected)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateLoaded value) loaded,
    required TResult Function(QuizzesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateLoaded value)? loaded,
    TResult? Function(QuizzesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateLoaded value)? loaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzesStateCopyWith<$Res> {
  factory $QuizzesStateCopyWith(
          QuizzesState value, $Res Function(QuizzesState) then) =
      _$QuizzesStateCopyWithImpl<$Res, QuizzesState>;
}

/// @nodoc
class _$QuizzesStateCopyWithImpl<$Res, $Val extends QuizzesState>
    implements $QuizzesStateCopyWith<$Res> {
  _$QuizzesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizzesStateLoadingCopyWith<$Res> {
  factory _$$QuizzesStateLoadingCopyWith(_$QuizzesStateLoading value,
          $Res Function(_$QuizzesStateLoading) then) =
      __$$QuizzesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesStateLoadingCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateLoading>
    implements _$$QuizzesStateLoadingCopyWith<$Res> {
  __$$QuizzesStateLoadingCopyWithImpl(
      _$QuizzesStateLoading _value, $Res Function(_$QuizzesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesStateLoading implements QuizzesStateLoading {
  const _$QuizzesStateLoading();

  @override
  String toString() {
    return 'QuizzesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizzesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected? topSelected) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected? topSelected)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected? topSelected)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateLoaded value) loaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateLoaded value)? loaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateLoaded value)? loaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateLoading implements QuizzesState {
  const factory QuizzesStateLoading() = _$QuizzesStateLoading;
}

/// @nodoc
abstract class _$$QuizzesStateLoadedCopyWith<$Res> {
  factory _$$QuizzesStateLoadedCopyWith(_$QuizzesStateLoaded value,
          $Res Function(_$QuizzesStateLoaded) then) =
      __$$QuizzesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({TopSelected? topSelected});

  $TopSelectedCopyWith<$Res>? get topSelected;
}

/// @nodoc
class __$$QuizzesStateLoadedCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateLoaded>
    implements _$$QuizzesStateLoadedCopyWith<$Res> {
  __$$QuizzesStateLoadedCopyWithImpl(
      _$QuizzesStateLoaded _value, $Res Function(_$QuizzesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSelected = freezed,
  }) {
    return _then(_$QuizzesStateLoaded(
      topSelected: freezed == topSelected
          ? _value.topSelected
          : topSelected // ignore: cast_nullable_to_non_nullable
              as TopSelected?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TopSelectedCopyWith<$Res>? get topSelected {
    if (_value.topSelected == null) {
      return null;
    }

    return $TopSelectedCopyWith<$Res>(_value.topSelected!, (value) {
      return _then(_value.copyWith(topSelected: value));
    });
  }
}

/// @nodoc

class _$QuizzesStateLoaded implements QuizzesStateLoaded {
  const _$QuizzesStateLoaded({this.topSelected});

  @override
  final TopSelected? topSelected;

  @override
  String toString() {
    return 'QuizzesState.loaded(topSelected: $topSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesStateLoaded &&
            (identical(other.topSelected, topSelected) ||
                other.topSelected == topSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzesStateLoadedCopyWith<_$QuizzesStateLoaded> get copyWith =>
      __$$QuizzesStateLoadedCopyWithImpl<_$QuizzesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected? topSelected) loaded,
    required TResult Function() error,
  }) {
    return loaded(topSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected? topSelected)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(topSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected? topSelected)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(topSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateLoaded value) loaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateLoaded value)? loaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateLoaded value)? loaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateLoaded implements QuizzesState {
  const factory QuizzesStateLoaded({final TopSelected? topSelected}) =
      _$QuizzesStateLoaded;

  TopSelected? get topSelected;
  @JsonKey(ignore: true)
  _$$QuizzesStateLoadedCopyWith<_$QuizzesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizzesStateErrorCopyWith<$Res> {
  factory _$$QuizzesStateErrorCopyWith(
          _$QuizzesStateError value, $Res Function(_$QuizzesStateError) then) =
      __$$QuizzesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesStateErrorCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateError>
    implements _$$QuizzesStateErrorCopyWith<$Res> {
  __$$QuizzesStateErrorCopyWithImpl(
      _$QuizzesStateError _value, $Res Function(_$QuizzesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesStateError implements QuizzesStateError {
  const _$QuizzesStateError();

  @override
  String toString() {
    return 'QuizzesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizzesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected? topSelected) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected? topSelected)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected? topSelected)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateLoaded value) loaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateLoaded value)? loaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateLoaded value)? loaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateError implements QuizzesState {
  const factory QuizzesStateError() = _$QuizzesStateError;
}
