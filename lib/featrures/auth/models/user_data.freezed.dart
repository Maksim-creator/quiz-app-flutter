// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int get id => throw _privateConstructorUsedError;
  UserGameData get data => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {int id,
      UserGameData data,
      String email,
      String token,
      String name,
      String avatar});

  $UserGameDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? email = null,
    Object? token = null,
    Object? name = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserGameData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserGameDataCopyWith<$Res> get data {
    return $UserGameDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      UserGameData data,
      String email,
      String token,
      String name,
      String avatar});

  @override
  $UserGameDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? email = null,
    Object? token = null,
    Object? name = null,
    Object? avatar = null,
  }) {
    return _then(_$_UserData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserGameData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData with DiagnosticableTreeMixin implements _UserData {
  const _$_UserData(
      {required this.id,
      required this.data,
      required this.email,
      required this.token,
      required this.name,
      required this.avatar});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final int id;
  @override
  final UserGameData data;
  @override
  final String email;
  @override
  final String token;
  @override
  final String name;
  @override
  final String avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(id: $id, data: $data, email: $email, token: $token, name: $name, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, data, email, token, name, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final int id,
      required final UserGameData data,
      required final String email,
      required final String token,
      required final String name,
      required final String avatar}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  int get id;
  @override
  UserGameData get data;
  @override
  String get email;
  @override
  String get token;
  @override
  String get name;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGameData _$UserGameDataFromJson(Map<String, dynamic> json) {
  return _UserGameData.fromJson(json);
}

/// @nodoc
mixin _$UserGameData {
  int get level => throw _privateConstructorUsedError;
  int get totalExperience => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGameDataCopyWith<UserGameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGameDataCopyWith<$Res> {
  factory $UserGameDataCopyWith(
          UserGameData value, $Res Function(UserGameData) then) =
      _$UserGameDataCopyWithImpl<$Res, UserGameData>;
  @useResult
  $Res call({int level, int totalExperience, int rank, int balance});
}

/// @nodoc
class _$UserGameDataCopyWithImpl<$Res, $Val extends UserGameData>
    implements $UserGameDataCopyWith<$Res> {
  _$UserGameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalExperience = null,
    Object? rank = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserGameDataCopyWith<$Res>
    implements $UserGameDataCopyWith<$Res> {
  factory _$$_UserGameDataCopyWith(
          _$_UserGameData value, $Res Function(_$_UserGameData) then) =
      __$$_UserGameDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int totalExperience, int rank, int balance});
}

/// @nodoc
class __$$_UserGameDataCopyWithImpl<$Res>
    extends _$UserGameDataCopyWithImpl<$Res, _$_UserGameData>
    implements _$$_UserGameDataCopyWith<$Res> {
  __$$_UserGameDataCopyWithImpl(
      _$_UserGameData _value, $Res Function(_$_UserGameData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalExperience = null,
    Object? rank = null,
    Object? balance = null,
  }) {
    return _then(_$_UserGameData(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGameData with DiagnosticableTreeMixin implements _UserGameData {
  const _$_UserGameData(
      {required this.level,
      required this.totalExperience,
      required this.rank,
      required this.balance});

  factory _$_UserGameData.fromJson(Map<String, dynamic> json) =>
      _$$_UserGameDataFromJson(json);

  @override
  final int level;
  @override
  final int totalExperience;
  @override
  final int rank;
  @override
  final int balance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserGameData(level: $level, totalExperience: $totalExperience, rank: $rank, balance: $balance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserGameData'))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('totalExperience', totalExperience))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('balance', balance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGameData &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalExperience, totalExperience) ||
                other.totalExperience == totalExperience) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, level, totalExperience, rank, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserGameDataCopyWith<_$_UserGameData> get copyWith =>
      __$$_UserGameDataCopyWithImpl<_$_UserGameData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGameDataToJson(
      this,
    );
  }
}

abstract class _UserGameData implements UserGameData {
  const factory _UserGameData(
      {required final int level,
      required final int totalExperience,
      required final int rank,
      required final int balance}) = _$_UserGameData;

  factory _UserGameData.fromJson(Map<String, dynamic> json) =
      _$_UserGameData.fromJson;

  @override
  int get level;
  @override
  int get totalExperience;
  @override
  int get rank;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_UserGameDataCopyWith<_$_UserGameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthBlocState {
  UserGameData? get data => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBlocStateCopyWith<AuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) then) =
      _$AuthBlocStateCopyWithImpl<$Res, AuthBlocState>;
  @useResult
  $Res call(
      {UserGameData? data,
      String? email,
      String? token,
      String? name,
      String? avatar});

  $UserGameDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res, $Val extends AuthBlocState>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserGameData?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserGameDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserGameDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$_AuthBlocStateCopyWith(
          _$_AuthBlocState value, $Res Function(_$_AuthBlocState) then) =
      __$$_AuthBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserGameData? data,
      String? email,
      String? token,
      String? name,
      String? avatar});

  @override
  $UserGameDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$_AuthBlocState>
    implements _$$_AuthBlocStateCopyWith<$Res> {
  __$$_AuthBlocStateCopyWithImpl(
      _$_AuthBlocState _value, $Res Function(_$_AuthBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_AuthBlocState(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserGameData?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthBlocState with DiagnosticableTreeMixin implements _AuthBlocState {
  const _$_AuthBlocState(
      {this.data, this.email, this.token, this.name, this.avatar});

  @override
  final UserGameData? data;
  @override
  final String? email;
  @override
  final String? token;
  @override
  final String? name;
  @override
  final String? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthBlocState(data: $data, email: $email, token: $token, name: $name, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthBlocState'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthBlocState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, email, token, name, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthBlocStateCopyWith<_$_AuthBlocState> get copyWith =>
      __$$_AuthBlocStateCopyWithImpl<_$_AuthBlocState>(this, _$identity);
}

abstract class _AuthBlocState implements AuthBlocState {
  const factory _AuthBlocState(
      {final UserGameData? data,
      final String? email,
      final String? token,
      final String? name,
      final String? avatar}) = _$_AuthBlocState;

  @override
  UserGameData? get data;
  @override
  String? get email;
  @override
  String? get token;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_AuthBlocStateCopyWith<_$_AuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  int get totalExperience => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({int id, String name, String avatar, int totalExperience});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? totalExperience = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String avatar, int totalExperience});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? totalExperience = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalExperience: null == totalExperience
          ? _value.totalExperience
          : totalExperience // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.totalExperience});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final int totalExperience;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, avatar: $avatar, totalExperience: $totalExperience)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('totalExperience', totalExperience));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.totalExperience, totalExperience) ||
                other.totalExperience == totalExperience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, avatar, totalExperience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String name,
      required final String avatar,
      required final int totalExperience}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get avatar;
  @override
  int get totalExperience;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
