// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  List<Badge> get badges => throw _privateConstructorUsedError;
  UserQuizData get quizData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({List<Badge> badges, UserQuizData quizData, bool isLoading});

  $UserQuizDataCopyWith<$Res> get quizData;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badges = null,
    Object? quizData = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      quizData: null == quizData
          ? _value.quizData
          : quizData // ignore: cast_nullable_to_non_nullable
              as UserQuizData,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserQuizDataCopyWith<$Res> get quizData {
    return $UserQuizDataCopyWith<$Res>(_value.quizData, (value) {
      return _then(_value.copyWith(quizData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Badge> badges, UserQuizData quizData, bool isLoading});

  @override
  $UserQuizDataCopyWith<$Res> get quizData;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badges = null,
    Object? quizData = null,
    Object? isLoading = null,
  }) {
    return _then(_$_UserState(
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      quizData: null == quizData
          ? _value.quizData
          : quizData // ignore: cast_nullable_to_non_nullable
              as UserQuizData,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required final List<Badge> badges,
      required this.quizData,
      this.isLoading = false})
      : _badges = badges;

  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final UserQuizData quizData;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserState(badges: $badges, quizData: $quizData, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.quizData, quizData) ||
                other.quizData == quizData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_badges), quizData, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final List<Badge> badges,
      required final UserQuizData quizData,
      final bool isLoading}) = _$_UserState;

  @override
  List<Badge> get badges;
  @override
  UserQuizData get quizData;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBadges,
    required TResult Function() getUserQuizDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBadges,
    TResult? Function()? getUserQuizDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBadges,
    TResult Function()? getUserQuizDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventGetBadges value) getBadges,
    required TResult Function(_UserEventGetUserQuizDetails value)
        getUserQuizDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventGetBadges value)? getBadges,
    TResult? Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventGetBadges value)? getBadges,
    TResult Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserEventGetBadgesCopyWith<$Res> {
  factory _$$_UserEventGetBadgesCopyWith(_$_UserEventGetBadges value,
          $Res Function(_$_UserEventGetBadges) then) =
      __$$_UserEventGetBadgesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserEventGetBadgesCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventGetBadges>
    implements _$$_UserEventGetBadgesCopyWith<$Res> {
  __$$_UserEventGetBadgesCopyWithImpl(
      _$_UserEventGetBadges _value, $Res Function(_$_UserEventGetBadges) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserEventGetBadges implements _UserEventGetBadges {
  const _$_UserEventGetBadges();

  @override
  String toString() {
    return 'UserEvent.getBadges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserEventGetBadges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBadges,
    required TResult Function() getUserQuizDetails,
  }) {
    return getBadges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBadges,
    TResult? Function()? getUserQuizDetails,
  }) {
    return getBadges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBadges,
    TResult Function()? getUserQuizDetails,
    required TResult orElse(),
  }) {
    if (getBadges != null) {
      return getBadges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventGetBadges value) getBadges,
    required TResult Function(_UserEventGetUserQuizDetails value)
        getUserQuizDetails,
  }) {
    return getBadges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventGetBadges value)? getBadges,
    TResult? Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
  }) {
    return getBadges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventGetBadges value)? getBadges,
    TResult Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
    required TResult orElse(),
  }) {
    if (getBadges != null) {
      return getBadges(this);
    }
    return orElse();
  }
}

abstract class _UserEventGetBadges implements UserEvent {
  const factory _UserEventGetBadges() = _$_UserEventGetBadges;
}

/// @nodoc
abstract class _$$_UserEventGetUserQuizDetailsCopyWith<$Res> {
  factory _$$_UserEventGetUserQuizDetailsCopyWith(
          _$_UserEventGetUserQuizDetails value,
          $Res Function(_$_UserEventGetUserQuizDetails) then) =
      __$$_UserEventGetUserQuizDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserEventGetUserQuizDetailsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserEventGetUserQuizDetails>
    implements _$$_UserEventGetUserQuizDetailsCopyWith<$Res> {
  __$$_UserEventGetUserQuizDetailsCopyWithImpl(
      _$_UserEventGetUserQuizDetails _value,
      $Res Function(_$_UserEventGetUserQuizDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserEventGetUserQuizDetails implements _UserEventGetUserQuizDetails {
  const _$_UserEventGetUserQuizDetails();

  @override
  String toString() {
    return 'UserEvent.getUserQuizDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEventGetUserQuizDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBadges,
    required TResult Function() getUserQuizDetails,
  }) {
    return getUserQuizDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBadges,
    TResult? Function()? getUserQuizDetails,
  }) {
    return getUserQuizDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBadges,
    TResult Function()? getUserQuizDetails,
    required TResult orElse(),
  }) {
    if (getUserQuizDetails != null) {
      return getUserQuizDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserEventGetBadges value) getBadges,
    required TResult Function(_UserEventGetUserQuizDetails value)
        getUserQuizDetails,
  }) {
    return getUserQuizDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserEventGetBadges value)? getBadges,
    TResult? Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
  }) {
    return getUserQuizDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserEventGetBadges value)? getBadges,
    TResult Function(_UserEventGetUserQuizDetails value)? getUserQuizDetails,
    required TResult orElse(),
  }) {
    if (getUserQuizDetails != null) {
      return getUserQuizDetails(this);
    }
    return orElse();
  }
}

abstract class _UserEventGetUserQuizDetails implements UserEvent {
  const factory _UserEventGetUserQuizDetails() = _$_UserEventGetUserQuizDetails;
}
