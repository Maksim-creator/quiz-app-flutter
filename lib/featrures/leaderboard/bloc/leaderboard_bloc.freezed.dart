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
mixin _$LeaderboardState {
  Leader get leader => throw _privateConstructorUsedError;
  List<Leader> get leaderboard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaderboardStateCopyWith<LeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
  @useResult
  $Res call({Leader leader, List<Leader> leaderboard, bool isLoading});

  $LeaderCopyWith<$Res> get leader;
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leader = null,
    Object? leaderboard = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as Leader,
      leaderboard: null == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<Leader>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderCopyWith<$Res> get leader {
    return $LeaderCopyWith<$Res>(_value.leader, (value) {
      return _then(_value.copyWith(leader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LeaderboardStateCopyWith<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  factory _$$_LeaderboardStateCopyWith(
          _$_LeaderboardState value, $Res Function(_$_LeaderboardState) then) =
      __$$_LeaderboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Leader leader, List<Leader> leaderboard, bool isLoading});

  @override
  $LeaderCopyWith<$Res> get leader;
}

/// @nodoc
class __$$_LeaderboardStateCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$_LeaderboardState>
    implements _$$_LeaderboardStateCopyWith<$Res> {
  __$$_LeaderboardStateCopyWithImpl(
      _$_LeaderboardState _value, $Res Function(_$_LeaderboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leader = null,
    Object? leaderboard = null,
    Object? isLoading = null,
  }) {
    return _then(_$_LeaderboardState(
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as Leader,
      leaderboard: null == leaderboard
          ? _value._leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<Leader>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LeaderboardState implements _LeaderboardState {
  const _$_LeaderboardState(
      {required this.leader,
      required final List<Leader> leaderboard,
      this.isLoading = false})
      : _leaderboard = leaderboard;

  @override
  final Leader leader;
  final List<Leader> _leaderboard;
  @override
  List<Leader> get leaderboard {
    if (_leaderboard is EqualUnmodifiableListView) return _leaderboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboard);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LeaderboardState(leader: $leader, leaderboard: $leaderboard, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderboardState &&
            (identical(other.leader, leader) || other.leader == leader) &&
            const DeepCollectionEquality()
                .equals(other._leaderboard, _leaderboard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leader,
      const DeepCollectionEquality().hash(_leaderboard), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderboardStateCopyWith<_$_LeaderboardState> get copyWith =>
      __$$_LeaderboardStateCopyWithImpl<_$_LeaderboardState>(this, _$identity);
}

abstract class _LeaderboardState implements LeaderboardState {
  const factory _LeaderboardState(
      {required final Leader leader,
      required final List<Leader> leaderboard,
      final bool isLoading}) = _$_LeaderboardState;

  @override
  Leader get leader;
  @override
  List<Leader> get leaderboard;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderboardStateCopyWith<_$_LeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeader,
    required TResult Function() getLeaderboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeader,
    TResult? Function()? getLeaderboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeader,
    TResult Function()? getLeaderboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardEventGetLeader value) getLeader,
    required TResult Function(_LeaderboardEventGetLeaderboard value)
        getLeaderboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult? Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
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
abstract class _$$_LeaderboardEventGetLeaderCopyWith<$Res> {
  factory _$$_LeaderboardEventGetLeaderCopyWith(
          _$_LeaderboardEventGetLeader value,
          $Res Function(_$_LeaderboardEventGetLeader) then) =
      __$$_LeaderboardEventGetLeaderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeaderboardEventGetLeaderCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$_LeaderboardEventGetLeader>
    implements _$$_LeaderboardEventGetLeaderCopyWith<$Res> {
  __$$_LeaderboardEventGetLeaderCopyWithImpl(
      _$_LeaderboardEventGetLeader _value,
      $Res Function(_$_LeaderboardEventGetLeader) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LeaderboardEventGetLeader implements _LeaderboardEventGetLeader {
  const _$_LeaderboardEventGetLeader();

  @override
  String toString() {
    return 'LeaderboardEvent.getLeader()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderboardEventGetLeader);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeader,
    required TResult Function() getLeaderboard,
  }) {
    return getLeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeader,
    TResult? Function()? getLeaderboard,
  }) {
    return getLeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeader,
    TResult Function()? getLeaderboard,
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
    required TResult Function(_LeaderboardEventGetLeader value) getLeader,
    required TResult Function(_LeaderboardEventGetLeaderboard value)
        getLeaderboard,
  }) {
    return getLeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult? Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
  }) {
    return getLeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
    required TResult orElse(),
  }) {
    if (getLeader != null) {
      return getLeader(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardEventGetLeader implements LeaderboardEvent {
  const factory _LeaderboardEventGetLeader() = _$_LeaderboardEventGetLeader;
}

/// @nodoc
abstract class _$$_LeaderboardEventGetLeaderboardCopyWith<$Res> {
  factory _$$_LeaderboardEventGetLeaderboardCopyWith(
          _$_LeaderboardEventGetLeaderboard value,
          $Res Function(_$_LeaderboardEventGetLeaderboard) then) =
      __$$_LeaderboardEventGetLeaderboardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeaderboardEventGetLeaderboardCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res,
        _$_LeaderboardEventGetLeaderboard>
    implements _$$_LeaderboardEventGetLeaderboardCopyWith<$Res> {
  __$$_LeaderboardEventGetLeaderboardCopyWithImpl(
      _$_LeaderboardEventGetLeaderboard _value,
      $Res Function(_$_LeaderboardEventGetLeaderboard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LeaderboardEventGetLeaderboard
    implements _LeaderboardEventGetLeaderboard {
  const _$_LeaderboardEventGetLeaderboard();

  @override
  String toString() {
    return 'LeaderboardEvent.getLeaderboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderboardEventGetLeaderboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLeader,
    required TResult Function() getLeaderboard,
  }) {
    return getLeaderboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLeader,
    TResult? Function()? getLeaderboard,
  }) {
    return getLeaderboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLeader,
    TResult Function()? getLeaderboard,
    required TResult orElse(),
  }) {
    if (getLeaderboard != null) {
      return getLeaderboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LeaderboardEventGetLeader value) getLeader,
    required TResult Function(_LeaderboardEventGetLeaderboard value)
        getLeaderboard,
  }) {
    return getLeaderboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult? Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
  }) {
    return getLeaderboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LeaderboardEventGetLeader value)? getLeader,
    TResult Function(_LeaderboardEventGetLeaderboard value)? getLeaderboard,
    required TResult orElse(),
  }) {
    if (getLeaderboard != null) {
      return getLeaderboard(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardEventGetLeaderboard implements LeaderboardEvent {
  const factory _LeaderboardEventGetLeaderboard() =
      _$_LeaderboardEventGetLeaderboard;
}
