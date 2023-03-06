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
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventRegistration value) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventRegistration value)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventRegistration value)? registration,
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
abstract class _$$AuthEventLoginCopyWith<$Res> {
  factory _$$AuthEventLoginCopyWith(
          _$AuthEventLogin value, $Res Function(_$AuthEventLogin) then) =
      __$$AuthEventLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInData signInData});
}

/// @nodoc
class __$$AuthEventLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLogin>
    implements _$$AuthEventLoginCopyWith<$Res> {
  __$$AuthEventLoginCopyWithImpl(
      _$AuthEventLogin _value, $Res Function(_$AuthEventLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInData = null,
  }) {
    return _then(_$AuthEventLogin(
      signInData: null == signInData
          ? _value.signInData
          : signInData // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ));
  }
}

/// @nodoc

class _$AuthEventLogin implements AuthEventLogin {
  const _$AuthEventLogin({required this.signInData});

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
            other is _$AuthEventLogin &&
            (identical(other.signInData, signInData) ||
                other.signInData == signInData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventLoginCopyWith<_$AuthEventLogin> get copyWith =>
      __$$AuthEventLoginCopyWithImpl<_$AuthEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
  }) {
    return login(signInData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
  }) {
    return login?.call(signInData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventRegistration value) registration,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventRegistration value)? registration,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventRegistration value)? registration,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogin implements AuthEvent {
  const factory AuthEventLogin({required final SignInData signInData}) =
      _$AuthEventLogin;

  SignInData get signInData;
  @JsonKey(ignore: true)
  _$$AuthEventLoginCopyWith<_$AuthEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventRegistrationCopyWith<$Res> {
  factory _$$AuthEventRegistrationCopyWith(_$AuthEventRegistration value,
          $Res Function(_$AuthEventRegistration) then) =
      __$$AuthEventRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpData signUpData});
}

/// @nodoc
class __$$AuthEventRegistrationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventRegistration>
    implements _$$AuthEventRegistrationCopyWith<$Res> {
  __$$AuthEventRegistrationCopyWithImpl(_$AuthEventRegistration _value,
      $Res Function(_$AuthEventRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpData = null,
  }) {
    return _then(_$AuthEventRegistration(
      signUpData: null == signUpData
          ? _value.signUpData
          : signUpData // ignore: cast_nullable_to_non_nullable
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$AuthEventRegistration implements AuthEventRegistration {
  const _$AuthEventRegistration({required this.signUpData});

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
            other is _$AuthEventRegistration &&
            (identical(other.signUpData, signUpData) ||
                other.signUpData == signUpData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventRegistrationCopyWith<_$AuthEventRegistration> get copyWith =>
      __$$AuthEventRegistrationCopyWithImpl<_$AuthEventRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData signInData) login,
    required TResult Function(SignUpData signUpData) registration,
  }) {
    return registration(signUpData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData signInData)? login,
    TResult? Function(SignUpData signUpData)? registration,
  }) {
    return registration?.call(signUpData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData signInData)? login,
    TResult Function(SignUpData signUpData)? registration,
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventRegistration value) registration,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventRegistration value)? registration,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventRegistration value)? registration,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class AuthEventRegistration implements AuthEvent {
  const factory AuthEventRegistration({required final SignUpData signUpData}) =
      _$AuthEventRegistration;

  SignUpData get signUpData;
  @JsonKey(ignore: true)
  _$$AuthEventRegistrationCopyWith<_$AuthEventRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthBlocState? state) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthBlocState? state)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthBlocState? state)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoaded value)? loaded,
    TResult? Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateLoadingCopyWith<$Res> {
  factory _$$AuthStateLoadingCopyWith(
          _$AuthStateLoading value, $Res Function(_$AuthStateLoading) then) =
      __$$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoading>
    implements _$$AuthStateLoadingCopyWith<$Res> {
  __$$AuthStateLoadingCopyWithImpl(
      _$AuthStateLoading _value, $Res Function(_$AuthStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthBlocState? state) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthBlocState? state)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthBlocState? state)? loaded,
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
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoaded value)? loaded,
    TResult? Function(AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class _$$AuthStateLoadedCopyWith<$Res> {
  factory _$$AuthStateLoadedCopyWith(
          _$AuthStateLoaded value, $Res Function(_$AuthStateLoaded) then) =
      __$$AuthStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthBlocState? state});

  $AuthBlocStateCopyWith<$Res>? get state;
}

/// @nodoc
class __$$AuthStateLoadedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoaded>
    implements _$$AuthStateLoadedCopyWith<$Res> {
  __$$AuthStateLoadedCopyWithImpl(
      _$AuthStateLoaded _value, $Res Function(_$AuthStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$AuthStateLoaded(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthBlocState?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthBlocStateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $AuthBlocStateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$AuthStateLoaded implements AuthStateLoaded {
  const _$AuthStateLoaded({this.state});

  @override
  final AuthBlocState? state;

  @override
  String toString() {
    return 'AuthState.loaded(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoaded &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoadedCopyWith<_$AuthStateLoaded> get copyWith =>
      __$$AuthStateLoadedCopyWithImpl<_$AuthStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthBlocState? state) loaded,
    required TResult Function() error,
  }) {
    return loaded(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthBlocState? state)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthBlocState? state)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AuthStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoaded value)? loaded,
    TResult? Function(AuthStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoaded implements AuthState {
  const factory AuthStateLoaded({final AuthBlocState? state}) =
      _$AuthStateLoaded;

  AuthBlocState? get state;
  @JsonKey(ignore: true)
  _$$AuthStateLoadedCopyWith<_$AuthStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateErrorCopyWith<$Res> {
  factory _$$AuthStateErrorCopyWith(
          _$AuthStateError value, $Res Function(_$AuthStateError) then) =
      __$$AuthStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateError>
    implements _$$AuthStateErrorCopyWith<$Res> {
  __$$AuthStateErrorCopyWithImpl(
      _$AuthStateError _value, $Res Function(_$AuthStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AuthBlocState? state) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AuthBlocState? state)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AuthBlocState? state)? loaded,
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
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateLoaded value)? loaded,
    TResult? Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError() = _$AuthStateError;
}
