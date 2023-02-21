// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardEventGetLeader value) getLeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardEventGetLeader value)? getLeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardEventGetLeader value)? getLeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEventCopyWith<$Res> {
  factory $LeaderboardEventCopyWith(
          LeaderboardEvent value, $Res Function(LeaderboardEvent) then) =
      _$LeaderboardEventCopyWithImpl<$Res, LeaderboardEvent>;
}

/// @nodoc
class _$LeaderboardEventCopyWithImpl<$Res, $Val extends LeaderboardEvent>
    implements $LeaderboardEventCopyWith<$Res> {
  _$LeaderboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LeaderboardEventGetLeaderCopyWith<$Res> {
  factory _$$LeaderboardEventGetLeaderCopyWith(
          _$LeaderboardEventGetLeader value,
          $Res Function(_$LeaderboardEventGetLeader) then) =
      __$$LeaderboardEventGetLeaderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaderboardEventGetLeaderCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$LeaderboardEventGetLeader>
    implements _$$LeaderboardEventGetLeaderCopyWith<$Res> {
  __$$LeaderboardEventGetLeaderCopyWithImpl(_$LeaderboardEventGetLeader _value,
      $Res Function(_$LeaderboardEventGetLeader) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaderboardEventGetLeader implements LeaderboardEventGetLeader {
  const _$LeaderboardEventGetLeader();

  @override
  String toString() {
    return 'LeaderboardEvent.getLeader()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEventGetLeader);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeader,
  }) {
    return getLeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeader,
  }) {
    return getLeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeader,
    required TResult orElse(),
  }) {
    if (getLeader != null) {
      return getLeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardEventGetLeader value) getLeader,
  }) {
    return getLeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardEventGetLeader value)? getLeader,
  }) {
    return getLeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardEventGetLeader value)? getLeader,
    required TResult orElse(),
  }) {
    if (getLeader != null) {
      return getLeader(this);
    }
    return orElse();
  }
}

abstract class LeaderboardEventGetLeader implements LeaderboardEvent {
  const factory LeaderboardEventGetLeader() = _$LeaderboardEventGetLeader;
}

/// @nodoc
mixin _$LeaderboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Leader? leader) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Leader? leader)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Leader? leader)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardStateLoading value) loading,
    required TResult Function(LeaderboardStateLoaded value) loaded,
    required TResult Function(LeaderboardStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardStateLoading value)? loading,
    TResult? Function(LeaderboardStateLoaded value)? loaded,
    TResult? Function(LeaderboardStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardStateLoading value)? loading,
    TResult Function(LeaderboardStateLoaded value)? loaded,
    TResult Function(LeaderboardStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LeaderboardStateLoadingCopyWith<$Res> {
  factory _$$LeaderboardStateLoadingCopyWith(_$LeaderboardStateLoading value,
          $Res Function(_$LeaderboardStateLoading) then) =
      __$$LeaderboardStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaderboardStateLoadingCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateLoading>
    implements _$$LeaderboardStateLoadingCopyWith<$Res> {
  __$$LeaderboardStateLoadingCopyWithImpl(_$LeaderboardStateLoading _value,
      $Res Function(_$LeaderboardStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaderboardStateLoading implements LeaderboardStateLoading {
  const _$LeaderboardStateLoading();

  @override
  String toString() {
    return 'LeaderboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Leader? leader) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Leader? leader)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Leader? leader)? loaded,
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
    required TResult Function(LeaderboardStateLoading value) loading,
    required TResult Function(LeaderboardStateLoaded value) loaded,
    required TResult Function(LeaderboardStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardStateLoading value)? loading,
    TResult? Function(LeaderboardStateLoaded value)? loaded,
    TResult? Function(LeaderboardStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardStateLoading value)? loading,
    TResult Function(LeaderboardStateLoaded value)? loaded,
    TResult Function(LeaderboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LeaderboardStateLoading implements LeaderboardState {
  const factory LeaderboardStateLoading() = _$LeaderboardStateLoading;
}

/// @nodoc
abstract class _$$LeaderboardStateLoadedCopyWith<$Res> {
  factory _$$LeaderboardStateLoadedCopyWith(_$LeaderboardStateLoaded value,
          $Res Function(_$LeaderboardStateLoaded) then) =
      __$$LeaderboardStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Leader? leader});

  $LeaderCopyWith<$Res>? get leader;
}

/// @nodoc
class __$$LeaderboardStateLoadedCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateLoaded>
    implements _$$LeaderboardStateLoadedCopyWith<$Res> {
  __$$LeaderboardStateLoadedCopyWithImpl(_$LeaderboardStateLoaded _value,
      $Res Function(_$LeaderboardStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leader = freezed,
  }) {
    return _then(_$LeaderboardStateLoaded(
      leader: freezed == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as Leader?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderCopyWith<$Res>? get leader {
    if (_value.leader == null) {
      return null;
    }

    return $LeaderCopyWith<$Res>(_value.leader!, (value) {
      return _then(_value.copyWith(leader: value));
    });
  }
}

/// @nodoc

class _$LeaderboardStateLoaded implements LeaderboardStateLoaded {
  const _$LeaderboardStateLoaded({required this.leader});

  @override
  final Leader? leader;

  @override
  String toString() {
    return 'LeaderboardState.loaded(leader: $leader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardStateLoaded &&
            (identical(other.leader, leader) || other.leader == leader));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardStateLoadedCopyWith<_$LeaderboardStateLoaded> get copyWith =>
      __$$LeaderboardStateLoadedCopyWithImpl<_$LeaderboardStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Leader? leader) loaded,
    required TResult Function() error,
  }) {
    return loaded(leader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Leader? leader)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(leader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Leader? leader)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(leader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardStateLoading value) loading,
    required TResult Function(LeaderboardStateLoaded value) loaded,
    required TResult Function(LeaderboardStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardStateLoading value)? loading,
    TResult? Function(LeaderboardStateLoaded value)? loaded,
    TResult? Function(LeaderboardStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardStateLoading value)? loading,
    TResult Function(LeaderboardStateLoaded value)? loaded,
    TResult Function(LeaderboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LeaderboardStateLoaded implements LeaderboardState {
  const factory LeaderboardStateLoaded({required final Leader? leader}) =
      _$LeaderboardStateLoaded;

  Leader? get leader;
  @JsonKey(ignore: true)
  _$$LeaderboardStateLoadedCopyWith<_$LeaderboardStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaderboardStateErrorCopyWith<$Res> {
  factory _$$LeaderboardStateErrorCopyWith(_$LeaderboardStateError value,
          $Res Function(_$LeaderboardStateError) then) =
      __$$LeaderboardStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaderboardStateErrorCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateError>
    implements _$$LeaderboardStateErrorCopyWith<$Res> {
  __$$LeaderboardStateErrorCopyWithImpl(_$LeaderboardStateError _value,
      $Res Function(_$LeaderboardStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaderboardStateError implements LeaderboardStateError {
  const _$LeaderboardStateError();

  @override
  String toString() {
    return 'LeaderboardState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaderboardStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Leader? leader) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Leader? leader)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Leader? leader)? loaded,
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
    required TResult Function(LeaderboardStateLoading value) loading,
    required TResult Function(LeaderboardStateLoaded value) loaded,
    required TResult Function(LeaderboardStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaderboardStateLoading value)? loading,
    TResult? Function(LeaderboardStateLoaded value)? loaded,
    TResult? Function(LeaderboardStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardStateLoading value)? loading,
    TResult Function(LeaderboardStateLoaded value)? loaded,
    TResult Function(LeaderboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LeaderboardStateError implements LeaderboardState {
  const factory LeaderboardStateError() = _$LeaderboardStateError;
}
