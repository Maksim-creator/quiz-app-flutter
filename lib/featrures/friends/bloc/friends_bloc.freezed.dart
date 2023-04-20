// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendsState {
  List<int> get friends => throw _privateConstructorUsedError;
  List<int> get requestSent => throw _privateConstructorUsedError;
  List<int> get requestGet => throw _privateConstructorUsedError;
  bool get isFriendsLoading => throw _privateConstructorUsedError;
  bool get isIncomingRequestsLoading => throw _privateConstructorUsedError;
  String get friendsError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendsStateCopyWith<FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsStateCopyWith<$Res> {
  factory $FriendsStateCopyWith(
          FriendsState value, $Res Function(FriendsState) then) =
      _$FriendsStateCopyWithImpl<$Res, FriendsState>;
  @useResult
  $Res call(
      {List<int> friends,
      List<int> requestSent,
      List<int> requestGet,
      bool isFriendsLoading,
      bool isIncomingRequestsLoading,
      String friendsError});
}

/// @nodoc
class _$FriendsStateCopyWithImpl<$Res, $Val extends FriendsState>
    implements $FriendsStateCopyWith<$Res> {
  _$FriendsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? requestSent = null,
    Object? requestGet = null,
    Object? isFriendsLoading = null,
    Object? isIncomingRequestsLoading = null,
    Object? friendsError = null,
  }) {
    return _then(_value.copyWith(
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<int>,
      requestSent: null == requestSent
          ? _value.requestSent
          : requestSent // ignore: cast_nullable_to_non_nullable
              as List<int>,
      requestGet: null == requestGet
          ? _value.requestGet
          : requestGet // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isFriendsLoading: null == isFriendsLoading
          ? _value.isFriendsLoading
          : isFriendsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isIncomingRequestsLoading: null == isIncomingRequestsLoading
          ? _value.isIncomingRequestsLoading
          : isIncomingRequestsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      friendsError: null == friendsError
          ? _value.friendsError
          : friendsError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendsStateCopyWith<$Res>
    implements $FriendsStateCopyWith<$Res> {
  factory _$$_FriendsStateCopyWith(
          _$_FriendsState value, $Res Function(_$_FriendsState) then) =
      __$$_FriendsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> friends,
      List<int> requestSent,
      List<int> requestGet,
      bool isFriendsLoading,
      bool isIncomingRequestsLoading,
      String friendsError});
}

/// @nodoc
class __$$_FriendsStateCopyWithImpl<$Res>
    extends _$FriendsStateCopyWithImpl<$Res, _$_FriendsState>
    implements _$$_FriendsStateCopyWith<$Res> {
  __$$_FriendsStateCopyWithImpl(
      _$_FriendsState _value, $Res Function(_$_FriendsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friends = null,
    Object? requestSent = null,
    Object? requestGet = null,
    Object? isFriendsLoading = null,
    Object? isIncomingRequestsLoading = null,
    Object? friendsError = null,
  }) {
    return _then(_$_FriendsState(
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<int>,
      requestSent: null == requestSent
          ? _value._requestSent
          : requestSent // ignore: cast_nullable_to_non_nullable
              as List<int>,
      requestGet: null == requestGet
          ? _value._requestGet
          : requestGet // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isFriendsLoading: null == isFriendsLoading
          ? _value.isFriendsLoading
          : isFriendsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isIncomingRequestsLoading: null == isIncomingRequestsLoading
          ? _value.isIncomingRequestsLoading
          : isIncomingRequestsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      friendsError: null == friendsError
          ? _value.friendsError
          : friendsError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FriendsState implements _FriendsState {
  const _$_FriendsState(
      {required final List<int> friends,
      required final List<int> requestSent,
      required final List<int> requestGet,
      this.isFriendsLoading = false,
      this.isIncomingRequestsLoading = false,
      this.friendsError = ''})
      : _friends = friends,
        _requestSent = requestSent,
        _requestGet = requestGet;

  final List<int> _friends;
  @override
  List<int> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<int> _requestSent;
  @override
  List<int> get requestSent {
    if (_requestSent is EqualUnmodifiableListView) return _requestSent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestSent);
  }

  final List<int> _requestGet;
  @override
  List<int> get requestGet {
    if (_requestGet is EqualUnmodifiableListView) return _requestGet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestGet);
  }

  @override
  @JsonKey()
  final bool isFriendsLoading;
  @override
  @JsonKey()
  final bool isIncomingRequestsLoading;
  @override
  @JsonKey()
  final String friendsError;

  @override
  String toString() {
    return 'FriendsState(friends: $friends, requestSent: $requestSent, requestGet: $requestGet, isFriendsLoading: $isFriendsLoading, isIncomingRequestsLoading: $isIncomingRequestsLoading, friendsError: $friendsError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsState &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality()
                .equals(other._requestSent, _requestSent) &&
            const DeepCollectionEquality()
                .equals(other._requestGet, _requestGet) &&
            (identical(other.isFriendsLoading, isFriendsLoading) ||
                other.isFriendsLoading == isFriendsLoading) &&
            (identical(other.isIncomingRequestsLoading,
                    isIncomingRequestsLoading) ||
                other.isIncomingRequestsLoading == isIncomingRequestsLoading) &&
            (identical(other.friendsError, friendsError) ||
                other.friendsError == friendsError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_friends),
      const DeepCollectionEquality().hash(_requestSent),
      const DeepCollectionEquality().hash(_requestGet),
      isFriendsLoading,
      isIncomingRequestsLoading,
      friendsError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsStateCopyWith<_$_FriendsState> get copyWith =>
      __$$_FriendsStateCopyWithImpl<_$_FriendsState>(this, _$identity);
}

abstract class _FriendsState implements FriendsState {
  const factory _FriendsState(
      {required final List<int> friends,
      required final List<int> requestSent,
      required final List<int> requestGet,
      final bool isFriendsLoading,
      final bool isIncomingRequestsLoading,
      final String friendsError}) = _$_FriendsState;

  @override
  List<int> get friends;
  @override
  List<int> get requestSent;
  @override
  List<int> get requestGet;
  @override
  bool get isFriendsLoading;
  @override
  bool get isIncomingRequestsLoading;
  @override
  String get friendsError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendsStateCopyWith<_$_FriendsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FriendsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsEventCopyWith<$Res> {
  factory $FriendsEventCopyWith(
          FriendsEvent value, $Res Function(FriendsEvent) then) =
      _$FriendsEventCopyWithImpl<$Res, FriendsEvent>;
}

/// @nodoc
class _$FriendsEventCopyWithImpl<$Res, $Val extends FriendsEvent>
    implements $FriendsEventCopyWith<$Res> {
  _$FriendsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FriendsEventGetFriendsListCopyWith<$Res> {
  factory _$$_FriendsEventGetFriendsListCopyWith(
          _$_FriendsEventGetFriendsList value,
          $Res Function(_$_FriendsEventGetFriendsList) then) =
      __$$_FriendsEventGetFriendsListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FriendsEventGetFriendsListCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res, _$_FriendsEventGetFriendsList>
    implements _$$_FriendsEventGetFriendsListCopyWith<$Res> {
  __$$_FriendsEventGetFriendsListCopyWithImpl(
      _$_FriendsEventGetFriendsList _value,
      $Res Function(_$_FriendsEventGetFriendsList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FriendsEventGetFriendsList implements _FriendsEventGetFriendsList {
  const _$_FriendsEventGetFriendsList();

  @override
  String toString() {
    return 'FriendsEvent.getFriendsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsEventGetFriendsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) {
    return getFriendsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) {
    return getFriendsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (getFriendsList != null) {
      return getFriendsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) {
    return getFriendsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) {
    return getFriendsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (getFriendsList != null) {
      return getFriendsList(this);
    }
    return orElse();
  }
}

abstract class _FriendsEventGetFriendsList implements FriendsEvent {
  const factory _FriendsEventGetFriendsList() = _$_FriendsEventGetFriendsList;
}

/// @nodoc
abstract class _$$_FriendsEventGetIncomingRequestsCopyWith<$Res> {
  factory _$$_FriendsEventGetIncomingRequestsCopyWith(
          _$_FriendsEventGetIncomingRequests value,
          $Res Function(_$_FriendsEventGetIncomingRequests) then) =
      __$$_FriendsEventGetIncomingRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FriendsEventGetIncomingRequestsCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res, _$_FriendsEventGetIncomingRequests>
    implements _$$_FriendsEventGetIncomingRequestsCopyWith<$Res> {
  __$$_FriendsEventGetIncomingRequestsCopyWithImpl(
      _$_FriendsEventGetIncomingRequests _value,
      $Res Function(_$_FriendsEventGetIncomingRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FriendsEventGetIncomingRequests
    implements _FriendsEventGetIncomingRequests {
  const _$_FriendsEventGetIncomingRequests();

  @override
  String toString() {
    return 'FriendsEvent.getIncomingRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsEventGetIncomingRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) {
    return getIncomingRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) {
    return getIncomingRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
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
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) {
    return getIncomingRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) {
    return getIncomingRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (getIncomingRequests != null) {
      return getIncomingRequests(this);
    }
    return orElse();
  }
}

abstract class _FriendsEventGetIncomingRequests implements FriendsEvent {
  const factory _FriendsEventGetIncomingRequests() =
      _$_FriendsEventGetIncomingRequests;
}

/// @nodoc
abstract class _$$_FriendsEventSubmitFriendRequestCopyWith<$Res> {
  factory _$$_FriendsEventSubmitFriendRequestCopyWith(
          _$_FriendsEventSubmitFriendRequest value,
          $Res Function(_$_FriendsEventSubmitFriendRequest) then) =
      __$$_FriendsEventSubmitFriendRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int whoSentId});
}

/// @nodoc
class __$$_FriendsEventSubmitFriendRequestCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res, _$_FriendsEventSubmitFriendRequest>
    implements _$$_FriendsEventSubmitFriendRequestCopyWith<$Res> {
  __$$_FriendsEventSubmitFriendRequestCopyWithImpl(
      _$_FriendsEventSubmitFriendRequest _value,
      $Res Function(_$_FriendsEventSubmitFriendRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whoSentId = null,
  }) {
    return _then(_$_FriendsEventSubmitFriendRequest(
      whoSentId: null == whoSentId
          ? _value.whoSentId
          : whoSentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FriendsEventSubmitFriendRequest
    implements _FriendsEventSubmitFriendRequest {
  const _$_FriendsEventSubmitFriendRequest({required this.whoSentId});

  @override
  final int whoSentId;

  @override
  String toString() {
    return 'FriendsEvent.submitFriendRequest(whoSentId: $whoSentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsEventSubmitFriendRequest &&
            (identical(other.whoSentId, whoSentId) ||
                other.whoSentId == whoSentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whoSentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsEventSubmitFriendRequestCopyWith<
          _$_FriendsEventSubmitFriendRequest>
      get copyWith => __$$_FriendsEventSubmitFriendRequestCopyWithImpl<
          _$_FriendsEventSubmitFriendRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) {
    return submitFriendRequest(whoSentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) {
    return submitFriendRequest?.call(whoSentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (submitFriendRequest != null) {
      return submitFriendRequest(whoSentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) {
    return submitFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) {
    return submitFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (submitFriendRequest != null) {
      return submitFriendRequest(this);
    }
    return orElse();
  }
}

abstract class _FriendsEventSubmitFriendRequest implements FriendsEvent {
  const factory _FriendsEventSubmitFriendRequest(
      {required final int whoSentId}) = _$_FriendsEventSubmitFriendRequest;

  int get whoSentId;
  @JsonKey(ignore: true)
  _$$_FriendsEventSubmitFriendRequestCopyWith<
          _$_FriendsEventSubmitFriendRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FriendsEventRejectFriendRequestCopyWith<$Res> {
  factory _$$_FriendsEventRejectFriendRequestCopyWith(
          _$_FriendsEventRejectFriendRequest value,
          $Res Function(_$_FriendsEventRejectFriendRequest) then) =
      __$$_FriendsEventRejectFriendRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int whoSentId});
}

/// @nodoc
class __$$_FriendsEventRejectFriendRequestCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res, _$_FriendsEventRejectFriendRequest>
    implements _$$_FriendsEventRejectFriendRequestCopyWith<$Res> {
  __$$_FriendsEventRejectFriendRequestCopyWithImpl(
      _$_FriendsEventRejectFriendRequest _value,
      $Res Function(_$_FriendsEventRejectFriendRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whoSentId = null,
  }) {
    return _then(_$_FriendsEventRejectFriendRequest(
      whoSentId: null == whoSentId
          ? _value.whoSentId
          : whoSentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FriendsEventRejectFriendRequest
    implements _FriendsEventRejectFriendRequest {
  const _$_FriendsEventRejectFriendRequest({required this.whoSentId});

  @override
  final int whoSentId;

  @override
  String toString() {
    return 'FriendsEvent.rejectFriendRequest(whoSentId: $whoSentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsEventRejectFriendRequest &&
            (identical(other.whoSentId, whoSentId) ||
                other.whoSentId == whoSentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whoSentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsEventRejectFriendRequestCopyWith<
          _$_FriendsEventRejectFriendRequest>
      get copyWith => __$$_FriendsEventRejectFriendRequestCopyWithImpl<
          _$_FriendsEventRejectFriendRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) {
    return rejectFriendRequest(whoSentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) {
    return rejectFriendRequest?.call(whoSentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (rejectFriendRequest != null) {
      return rejectFriendRequest(whoSentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) {
    return rejectFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) {
    return rejectFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (rejectFriendRequest != null) {
      return rejectFriendRequest(this);
    }
    return orElse();
  }
}

abstract class _FriendsEventRejectFriendRequest implements FriendsEvent {
  const factory _FriendsEventRejectFriendRequest(
      {required final int whoSentId}) = _$_FriendsEventRejectFriendRequest;

  int get whoSentId;
  @JsonKey(ignore: true)
  _$$_FriendsEventRejectFriendRequestCopyWith<
          _$_FriendsEventRejectFriendRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FriendsEventSendFriendRequestCopyWith<$Res> {
  factory _$$_FriendsEventSendFriendRequestCopyWith(
          _$_FriendsEventSendFriendRequest value,
          $Res Function(_$_FriendsEventSendFriendRequest) then) =
      __$$_FriendsEventSendFriendRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({int friendId});
}

/// @nodoc
class __$$_FriendsEventSendFriendRequestCopyWithImpl<$Res>
    extends _$FriendsEventCopyWithImpl<$Res, _$_FriendsEventSendFriendRequest>
    implements _$$_FriendsEventSendFriendRequestCopyWith<$Res> {
  __$$_FriendsEventSendFriendRequestCopyWithImpl(
      _$_FriendsEventSendFriendRequest _value,
      $Res Function(_$_FriendsEventSendFriendRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendId = null,
  }) {
    return _then(_$_FriendsEventSendFriendRequest(
      friendId: null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FriendsEventSendFriendRequest
    implements _FriendsEventSendFriendRequest {
  const _$_FriendsEventSendFriendRequest({required this.friendId});

  @override
  final int friendId;

  @override
  String toString() {
    return 'FriendsEvent.sendFriendRequest(friendId: $friendId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsEventSendFriendRequest &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsEventSendFriendRequestCopyWith<_$_FriendsEventSendFriendRequest>
      get copyWith => __$$_FriendsEventSendFriendRequestCopyWithImpl<
          _$_FriendsEventSendFriendRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFriendsList,
    required TResult Function() getIncomingRequests,
    required TResult Function(int whoSentId) submitFriendRequest,
    required TResult Function(int whoSentId) rejectFriendRequest,
    required TResult Function(int friendId) sendFriendRequest,
  }) {
    return sendFriendRequest(friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
    TResult? Function()? getIncomingRequests,
    TResult? Function(int whoSentId)? submitFriendRequest,
    TResult? Function(int whoSentId)? rejectFriendRequest,
    TResult? Function(int friendId)? sendFriendRequest,
  }) {
    return sendFriendRequest?.call(friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    TResult Function()? getIncomingRequests,
    TResult Function(int whoSentId)? submitFriendRequest,
    TResult Function(int whoSentId)? rejectFriendRequest,
    TResult Function(int friendId)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (sendFriendRequest != null) {
      return sendFriendRequest(friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
    required TResult Function(_FriendsEventGetIncomingRequests value)
        getIncomingRequests,
    required TResult Function(_FriendsEventSubmitFriendRequest value)
        submitFriendRequest,
    required TResult Function(_FriendsEventRejectFriendRequest value)
        rejectFriendRequest,
    required TResult Function(_FriendsEventSendFriendRequest value)
        sendFriendRequest,
  }) {
    return sendFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult? Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult? Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult? Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult? Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
  }) {
    return sendFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
    TResult Function(_FriendsEventGetIncomingRequests value)?
        getIncomingRequests,
    TResult Function(_FriendsEventSubmitFriendRequest value)?
        submitFriendRequest,
    TResult Function(_FriendsEventRejectFriendRequest value)?
        rejectFriendRequest,
    TResult Function(_FriendsEventSendFriendRequest value)? sendFriendRequest,
    required TResult orElse(),
  }) {
    if (sendFriendRequest != null) {
      return sendFriendRequest(this);
    }
    return orElse();
  }
}

abstract class _FriendsEventSendFriendRequest implements FriendsEvent {
  const factory _FriendsEventSendFriendRequest({required final int friendId}) =
      _$_FriendsEventSendFriendRequest;

  int get friendId;
  @JsonKey(ignore: true)
  _$$_FriendsEventSendFriendRequestCopyWith<_$_FriendsEventSendFriendRequest>
      get copyWith => throw _privateConstructorUsedError;
}
