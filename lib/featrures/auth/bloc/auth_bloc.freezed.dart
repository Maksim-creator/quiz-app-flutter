// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  UserGameData get data => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {UserGameData data,
      String email,
      String token,
      String name,
      String avatar,
      bool isLoading});

  $UserGameDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? email = null,
    Object? token = null,
    Object? name = null,
    Object? avatar = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserGameData data,
      String email,
      String token,
      String name,
      String avatar,
      bool isLoading});

  @override
  $UserGameDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? email = null,
    Object? token = null,
    Object? name = null,
    Object? avatar = null,
    Object? isLoading = null,
  }) {
    return _then(_$_AuthState(
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.data,
      required this.email,
      required this.token,
      required this.name,
      required this.avatar,
      this.isLoading = false});

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
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(data: $data, email: $email, token: $token, name: $name, avatar: $avatar, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, email, token, name, avatar, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final UserGameData data,
      required final String email,
      required final String token,
      required final String name,
      required final String avatar,
      final bool isLoading}) = _$_AuthState;

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
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
    required TResult Function(File avatar) uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
    TResult? Function(File avatar)? uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
    TResult Function(File avatar)? uploadAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegistration value) registration,
    required TResult Function(_AuthEventUploadAvatar value) uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegistration value)? registration,
    TResult? Function(_AuthEventUploadAvatar value)? uploadAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegistration value)? registration,
    TResult Function(_AuthEventUploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEventLoginCopyWith<$Res> {
  factory _$$_AuthEventLoginCopyWith(
          _$_AuthEventLogin value, $Res Function(_$_AuthEventLogin) then) =
      __$$_AuthEventLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInData signInData});
}

/// @nodoc
class __$$_AuthEventLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventLogin>
    implements _$$_AuthEventLoginCopyWith<$Res> {
  __$$_AuthEventLoginCopyWithImpl(
      _$_AuthEventLogin _value, $Res Function(_$_AuthEventLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInData = null,
  }) {
    return _then(_$_AuthEventLogin(
      signInData: null == signInData
          ? _value.signInData
          : signInData // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ));
  }
}

/// @nodoc

class _$_AuthEventLogin implements _AuthEventLogin {
  const _$_AuthEventLogin({required this.signInData});

  @override
  final SignInData signInData;

  @override
  String toString() {
    return 'AuthEvent.login(signInData: $signInData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventLogin &&
            (identical(other.signInData, signInData) ||
                other.signInData == signInData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventLoginCopyWith<_$_AuthEventLogin> get copyWith =>
      __$$_AuthEventLoginCopyWithImpl<_$_AuthEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
    required TResult Function(File avatar) uploadAvatar,
  }) {
    return login(signInData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
    TResult? Function(File avatar)? uploadAvatar,
  }) {
    return login?.call(signInData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
    TResult Function(File avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(signInData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegistration value) registration,
    required TResult Function(_AuthEventUploadAvatar value) uploadAvatar,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegistration value)? registration,
    TResult? Function(_AuthEventUploadAvatar value)? uploadAvatar,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegistration value)? registration,
    TResult Function(_AuthEventUploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogin implements AuthEvent {
  const factory _AuthEventLogin({required final SignInData signInData}) =
      _$_AuthEventLogin;

  SignInData get signInData;
  @JsonKey(ignore: true)
  _$$_AuthEventLoginCopyWith<_$_AuthEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventRegistrationCopyWith<$Res> {
  factory _$$_AuthEventRegistrationCopyWith(_$_AuthEventRegistration value,
          $Res Function(_$_AuthEventRegistration) then) =
      __$$_AuthEventRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpData signUpData});
}

/// @nodoc
class __$$_AuthEventRegistrationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventRegistration>
    implements _$$_AuthEventRegistrationCopyWith<$Res> {
  __$$_AuthEventRegistrationCopyWithImpl(_$_AuthEventRegistration _value,
      $Res Function(_$_AuthEventRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpData = null,
  }) {
    return _then(_$_AuthEventRegistration(
      signUpData: null == signUpData
          ? _value.signUpData
          : signUpData // ignore: cast_nullable_to_non_nullable
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$_AuthEventRegistration implements _AuthEventRegistration {
  const _$_AuthEventRegistration({required this.signUpData});

  @override
  final SignUpData signUpData;

  @override
  String toString() {
    return 'AuthEvent.registration(signUpData: $signUpData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventRegistration &&
            (identical(other.signUpData, signUpData) ||
                other.signUpData == signUpData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventRegistrationCopyWith<_$_AuthEventRegistration> get copyWith =>
      __$$_AuthEventRegistrationCopyWithImpl<_$_AuthEventRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
    required TResult Function(File avatar) uploadAvatar,
  }) {
    return registration(signUpData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
    TResult? Function(File avatar)? uploadAvatar,
  }) {
    return registration?.call(signUpData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
    TResult Function(File avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(signUpData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegistration value) registration,
    required TResult Function(_AuthEventUploadAvatar value) uploadAvatar,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegistration value)? registration,
    TResult? Function(_AuthEventUploadAvatar value)? uploadAvatar,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegistration value)? registration,
    TResult Function(_AuthEventUploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _AuthEventRegistration implements AuthEvent {
  const factory _AuthEventRegistration({required final SignUpData signUpData}) =
      _$_AuthEventRegistration;

  SignUpData get signUpData;
  @JsonKey(ignore: true)
  _$$_AuthEventRegistrationCopyWith<_$_AuthEventRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventUploadAvatarCopyWith<$Res> {
  factory _$$_AuthEventUploadAvatarCopyWith(_$_AuthEventUploadAvatar value,
          $Res Function(_$_AuthEventUploadAvatar) then) =
      __$$_AuthEventUploadAvatarCopyWithImpl<$Res>;
  @useResult
  $Res call({File avatar});
}

/// @nodoc
class __$$_AuthEventUploadAvatarCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventUploadAvatar>
    implements _$$_AuthEventUploadAvatarCopyWith<$Res> {
  __$$_AuthEventUploadAvatarCopyWithImpl(_$_AuthEventUploadAvatar _value,
      $Res Function(_$_AuthEventUploadAvatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$_AuthEventUploadAvatar(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_AuthEventUploadAvatar implements _AuthEventUploadAvatar {
  const _$_AuthEventUploadAvatar({required this.avatar});

  @override
  final File avatar;

  @override
  String toString() {
    return 'AuthEvent.uploadAvatar(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventUploadAvatar &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventUploadAvatarCopyWith<_$_AuthEventUploadAvatar> get copyWith =>
      __$$_AuthEventUploadAvatarCopyWithImpl<_$_AuthEventUploadAvatar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
    required TResult Function(File avatar) uploadAvatar,
  }) {
    return uploadAvatar(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
    TResult? Function(File avatar)? uploadAvatar,
  }) {
    return uploadAvatar?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
    TResult Function(File avatar)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
    required TResult Function(_AuthEventRegistration value) registration,
    required TResult Function(_AuthEventUploadAvatar value) uploadAvatar,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
    TResult? Function(_AuthEventRegistration value)? registration,
    TResult? Function(_AuthEventUploadAvatar value)? uploadAvatar,
  }) {
    return uploadAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    TResult Function(_AuthEventRegistration value)? registration,
    TResult Function(_AuthEventUploadAvatar value)? uploadAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class _AuthEventUploadAvatar implements AuthEvent {
  const factory _AuthEventUploadAvatar({required final File avatar}) =
      _$_AuthEventUploadAvatar;

  File get avatar;
  @JsonKey(ignore: true)
  _$$_AuthEventUploadAvatarCopyWith<_$_AuthEventUploadAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}
