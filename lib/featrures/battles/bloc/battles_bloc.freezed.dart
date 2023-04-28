// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BattlesState {
  List<Battle> get incomingRequests => throw _privateConstructorUsedError;
  bool get isIncomingRequestsLoading => throw _privateConstructorUsedError;
  bool get isRejectRequestLoading => throw _privateConstructorUsedError;
  String get battlesError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BattlesStateCopyWith<BattlesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlesStateCopyWith<$Res> {
  factory $BattlesStateCopyWith(
          BattlesState value, $Res Function(BattlesState) then) =
      _$BattlesStateCopyWithImpl<$Res, BattlesState>;
  @useResult
  $Res call(
      {List<Battle> incomingRequests,
      bool isIncomingRequestsLoading,
      bool isRejectRequestLoading,
      String battlesError});
}

/// @nodoc
class _$BattlesStateCopyWithImpl<$Res, $Val extends BattlesState>
    implements $BattlesStateCopyWith<$Res> {
  _$BattlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomingRequests = null,
    Object? isIncomingRequestsLoading = null,
    Object? isRejectRequestLoading = null,
    Object? battlesError = null,
  }) {
    return _then(_value.copyWith(
      incomingRequests: null == incomingRequests
          ? _value.incomingRequests
          : incomingRequests // ignore: cast_nullable_to_non_nullable
              as List<Battle>,
      isIncomingRequestsLoading: null == isIncomingRequestsLoading
          ? _value.isIncomingRequestsLoading
          : isIncomingRequestsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejectRequestLoading: null == isRejectRequestLoading
          ? _value.isRejectRequestLoading
          : isRejectRequestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      battlesError: null == battlesError
          ? _value.battlesError
          : battlesError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendsStateCopyWith<$Res>
    implements $BattlesStateCopyWith<$Res> {
  factory _$$_FriendsStateCopyWith(
          _$_FriendsState value, $Res Function(_$_FriendsState) then) =
      __$$_FriendsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Battle> incomingRequests,
      bool isIncomingRequestsLoading,
      bool isRejectRequestLoading,
      String battlesError});
}

/// @nodoc
class __$$_FriendsStateCopyWithImpl<$Res>
    extends _$BattlesStateCopyWithImpl<$Res, _$_FriendsState>
    implements _$$_FriendsStateCopyWith<$Res> {
  __$$_FriendsStateCopyWithImpl(
      _$_FriendsState _value, $Res Function(_$_FriendsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomingRequests = null,
    Object? isIncomingRequestsLoading = null,
    Object? isRejectRequestLoading = null,
    Object? battlesError = null,
  }) {
    return _then(_$_FriendsState(
      incomingRequests: null == incomingRequests
          ? _value._incomingRequests
          : incomingRequests // ignore: cast_nullable_to_non_nullable
              as List<Battle>,
      isIncomingRequestsLoading: null == isIncomingRequestsLoading
          ? _value.isIncomingRequestsLoading
          : isIncomingRequestsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRejectRequestLoading: null == isRejectRequestLoading
          ? _value.isRejectRequestLoading
          : isRejectRequestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      battlesError: null == battlesError
          ? _value.battlesError
          : battlesError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FriendsState implements _FriendsState {
  const _$_FriendsState(
      {required final List<Battle> incomingRequests,
      this.isIncomingRequestsLoading = false,
      this.isRejectRequestLoading = false,
      this.battlesError = ''})
      : _incomingRequests = incomingRequests;

  final List<Battle> _incomingRequests;
  @override
  List<Battle> get incomingRequests {
    if (_incomingRequests is EqualUnmodifiableListView)
      return _incomingRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomingRequests);
  }

  @override
  @JsonKey()
  final bool isIncomingRequestsLoading;
  @override
  @JsonKey()
  final bool isRejectRequestLoading;
  @override
  @JsonKey()
  final String battlesError;

  @override
  String toString() {
    return 'BattlesState(incomingRequests: $incomingRequests, isIncomingRequestsLoading: $isIncomingRequestsLoading, isRejectRequestLoading: $isRejectRequestLoading, battlesError: $battlesError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsState &&
            const DeepCollectionEquality()
                .equals(other._incomingRequests, _incomingRequests) &&
            (identical(other.isIncomingRequestsLoading,
                    isIncomingRequestsLoading) ||
                other.isIncomingRequestsLoading == isIncomingRequestsLoading) &&
            (identical(other.isRejectRequestLoading, isRejectRequestLoading) ||
                other.isRejectRequestLoading == isRejectRequestLoading) &&
            (identical(other.battlesError, battlesError) ||
                other.battlesError == battlesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_incomingRequests),
      isIncomingRequestsLoading,
      isRejectRequestLoading,
      battlesError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsStateCopyWith<_$_FriendsState> get copyWith =>
      __$$_FriendsStateCopyWithImpl<_$_FriendsState>(this, _$identity);
}

abstract class _FriendsState implements BattlesState {
  const factory _FriendsState(
      {required final List<Battle> incomingRequests,
      final bool isIncomingRequestsLoading,
      final bool isRejectRequestLoading,
      final String battlesError}) = _$_FriendsState;

  @override
  List<Battle> get incomingRequests;
  @override
  bool get isIncomingRequestsLoading;
  @override
  bool get isRejectRequestLoading;
  @override
  String get battlesError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendsStateCopyWith<_$_FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BattlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIncomingRequests,
    required TResult Function(Battle battleRequest) rejectBattleRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getIncomingRequests,
    TResult? Function(Battle battleRequest)? rejectBattleRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIncomingRequests,
    TResult Function(Battle battleRequest)? rejectBattleRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlesEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_BattlesEventRejectBattleRequest value)
        rejectBattleRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlesEventCopyWith<$Res> {
  factory $BattlesEventCopyWith(
          BattlesEvent value, $Res Function(BattlesEvent) then) =
      _$BattlesEventCopyWithImpl<$Res, BattlesEvent>;
}

/// @nodoc
class _$BattlesEventCopyWithImpl<$Res, $Val extends BattlesEvent>
    implements $BattlesEventCopyWith<$Res> {
  _$BattlesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BattlesEventGetIncomingRequestsCopyWith<$Res> {
  factory _$$_BattlesEventGetIncomingRequestsCopyWith(
          _$_BattlesEventGetIncomingRequests value,
          $Res Function(_$_BattlesEventGetIncomingRequests) then) =
      __$$_BattlesEventGetIncomingRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BattlesEventGetIncomingRequestsCopyWithImpl<$Res>
    extends _$BattlesEventCopyWithImpl<$Res, _$_BattlesEventGetIncomingRequests>
    implements _$$_BattlesEventGetIncomingRequestsCopyWith<$Res> {
  __$$_BattlesEventGetIncomingRequestsCopyWithImpl(
      _$_BattlesEventGetIncomingRequests _value,
      $Res Function(_$_BattlesEventGetIncomingRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BattlesEventGetIncomingRequests
    implements _BattlesEventGetIncomingRequests {
  const _$_BattlesEventGetIncomingRequests();

  @override
  String toString() {
    return 'BattlesEvent.getIncomingRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlesEventGetIncomingRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIncomingRequests,
    required TResult Function(Battle battleRequest) rejectBattleRequest,
  }) {
    return getIncomingRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getIncomingRequests,
    TResult? Function(Battle battleRequest)? rejectBattleRequest,
  }) {
    return getIncomingRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIncomingRequests,
    TResult Function(Battle battleRequest)? rejectBattleRequest,
    required TResult orElse(),
  }) {
    if (getIncomingRequests != null) {
      return getIncomingRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlesEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_BattlesEventRejectBattleRequest value)
        rejectBattleRequest,
  }) {
    return getIncomingRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
  }) {
    return getIncomingRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
    required TResult orElse(),
  }) {
    if (getIncomingRequests != null) {
      return getIncomingRequests(this);
    }
    return orElse();
  }
}

abstract class _BattlesEventGetIncomingRequests implements BattlesEvent {
  const factory _BattlesEventGetIncomingRequests() =
      _$_BattlesEventGetIncomingRequests;
}

/// @nodoc
abstract class _$$_BattlesEventRejectBattleRequestCopyWith<$Res> {
  factory _$$_BattlesEventRejectBattleRequestCopyWith(
          _$_BattlesEventRejectBattleRequest value,
          $Res Function(_$_BattlesEventRejectBattleRequest) then) =
      __$$_BattlesEventRejectBattleRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({Battle battleRequest});

  $BattleCopyWith<$Res> get battleRequest;
}

/// @nodoc
class __$$_BattlesEventRejectBattleRequestCopyWithImpl<$Res>
    extends _$BattlesEventCopyWithImpl<$Res, _$_BattlesEventRejectBattleRequest>
    implements _$$_BattlesEventRejectBattleRequestCopyWith<$Res> {
  __$$_BattlesEventRejectBattleRequestCopyWithImpl(
      _$_BattlesEventRejectBattleRequest _value,
      $Res Function(_$_BattlesEventRejectBattleRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? battleRequest = null,
  }) {
    return _then(_$_BattlesEventRejectBattleRequest(
      null == battleRequest
          ? _value.battleRequest
          : battleRequest // ignore: cast_nullable_to_non_nullable
              as Battle,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BattleCopyWith<$Res> get battleRequest {
    return $BattleCopyWith<$Res>(_value.battleRequest, (value) {
      return _then(_value.copyWith(battleRequest: value));
    });
  }
}

/// @nodoc

class _$_BattlesEventRejectBattleRequest
    implements _BattlesEventRejectBattleRequest {
  const _$_BattlesEventRejectBattleRequest(this.battleRequest);

  @override
  final Battle battleRequest;

  @override
  String toString() {
    return 'BattlesEvent.rejectBattleRequest(battleRequest: $battleRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlesEventRejectBattleRequest &&
            (identical(other.battleRequest, battleRequest) ||
                other.battleRequest == battleRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, battleRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattlesEventRejectBattleRequestCopyWith<
          _$_BattlesEventRejectBattleRequest>
      get copyWith => __$$_BattlesEventRejectBattleRequestCopyWithImpl<
          _$_BattlesEventRejectBattleRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIncomingRequests,
    required TResult Function(Battle battleRequest) rejectBattleRequest,
  }) {
    return rejectBattleRequest(battleRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getIncomingRequests,
    TResult? Function(Battle battleRequest)? rejectBattleRequest,
  }) {
    return rejectBattleRequest?.call(battleRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIncomingRequests,
    TResult Function(Battle battleRequest)? rejectBattleRequest,
    required TResult orElse(),
  }) {
    if (rejectBattleRequest != null) {
      return rejectBattleRequest(battleRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlesEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_BattlesEventRejectBattleRequest value)
        rejectBattleRequest,
  }) {
    return rejectBattleRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
  }) {
    return rejectBattleRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlesEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_BattlesEventRejectBattleRequest value)?
        rejectBattleRequest,
    required TResult orElse(),
  }) {
    if (rejectBattleRequest != null) {
      return rejectBattleRequest(this);
    }
    return orElse();
  }
}

abstract class _BattlesEventRejectBattleRequest implements BattlesEvent {
  const factory _BattlesEventRejectBattleRequest(final Battle battleRequest) =
      _$_BattlesEventRejectBattleRequest;

  Battle get battleRequest;
  @JsonKey(ignore: true)
  _$$_BattlesEventRejectBattleRequestCopyWith<
          _$_BattlesEventRejectBattleRequest>
      get copyWith => throw _privateConstructorUsedError;
}
