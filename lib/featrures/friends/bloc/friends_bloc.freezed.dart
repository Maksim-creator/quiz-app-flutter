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
  final String friendsError;

  @override
  String toString() {
    return 'FriendsState(friends: $friends, requestSent: $requestSent, requestGet: $requestGet, isFriendsLoading: $isFriendsLoading, friendsError: $friendsError)';
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FriendsEventGetFriendsList value) getFriendsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
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
  }) {
    return getFriendsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFriendsList,
  }) {
    return getFriendsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFriendsList,
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
  }) {
    return getFriendsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FriendsEventGetFriendsList value)? getFriendsList,
  }) {
    return getFriendsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FriendsEventGetFriendsList value)? getFriendsList,
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
