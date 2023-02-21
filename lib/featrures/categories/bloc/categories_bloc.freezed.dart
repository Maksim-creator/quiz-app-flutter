// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAvailableCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAvailableCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAvailableCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEventGetAvailableCategories value)
        getAvailableCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEventGetAvailableCategories value)?
        getAvailableCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEventGetAvailableCategories value)?
        getAvailableCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoriesEventGetAvailableCategoriesCopyWith<$Res> {
  factory _$$CategoriesEventGetAvailableCategoriesCopyWith(
          _$CategoriesEventGetAvailableCategories value,
          $Res Function(_$CategoriesEventGetAvailableCategories) then) =
      __$$CategoriesEventGetAvailableCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesEventGetAvailableCategoriesCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res,
        _$CategoriesEventGetAvailableCategories>
    implements _$$CategoriesEventGetAvailableCategoriesCopyWith<$Res> {
  __$$CategoriesEventGetAvailableCategoriesCopyWithImpl(
      _$CategoriesEventGetAvailableCategories _value,
      $Res Function(_$CategoriesEventGetAvailableCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesEventGetAvailableCategories
    implements CategoriesEventGetAvailableCategories {
  const _$CategoriesEventGetAvailableCategories();

  @override
  String toString() {
    return 'CategoriesEvent.getAvailableCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEventGetAvailableCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAvailableCategories,
  }) {
    return getAvailableCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAvailableCategories,
  }) {
    return getAvailableCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAvailableCategories,
    required TResult orElse(),
  }) {
    if (getAvailableCategories != null) {
      return getAvailableCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesEventGetAvailableCategories value)
        getAvailableCategories,
  }) {
    return getAvailableCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesEventGetAvailableCategories value)?
        getAvailableCategories,
  }) {
    return getAvailableCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesEventGetAvailableCategories value)?
        getAvailableCategories,
    required TResult orElse(),
  }) {
    if (getAvailableCategories != null) {
      return getAvailableCategories(this);
    }
    return orElse();
  }
}

abstract class CategoriesEventGetAvailableCategories
    implements CategoriesEvent {
  const factory CategoriesEventGetAvailableCategories() =
      _$CategoriesEventGetAvailableCategories;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesStateLoading value) loading,
    required TResult Function(CategoriesStateLoaded value) loaded,
    required TResult Function(CategoriesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesStateLoading value)? loading,
    TResult? Function(CategoriesStateLoaded value)? loaded,
    TResult? Function(CategoriesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesStateLoading value)? loading,
    TResult Function(CategoriesStateLoaded value)? loaded,
    TResult Function(CategoriesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoriesStateLoadingCopyWith<$Res> {
  factory _$$CategoriesStateLoadingCopyWith(_$CategoriesStateLoading value,
          $Res Function(_$CategoriesStateLoading) then) =
      __$$CategoriesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesStateLoadingCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateLoading>
    implements _$$CategoriesStateLoadingCopyWith<$Res> {
  __$$CategoriesStateLoadingCopyWithImpl(_$CategoriesStateLoading _value,
      $Res Function(_$CategoriesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesStateLoading implements CategoriesStateLoading {
  const _$CategoriesStateLoading();

  @override
  String toString() {
    return 'CategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoriesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoriesStateLoading value) loading,
    required TResult Function(CategoriesStateLoaded value) loaded,
    required TResult Function(CategoriesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesStateLoading value)? loading,
    TResult? Function(CategoriesStateLoaded value)? loaded,
    TResult? Function(CategoriesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesStateLoading value)? loading,
    TResult Function(CategoriesStateLoaded value)? loaded,
    TResult Function(CategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoriesStateLoading implements CategoriesState {
  const factory CategoriesStateLoading() = _$CategoriesStateLoading;
}

/// @nodoc
abstract class _$$CategoriesStateLoadedCopyWith<$Res> {
  factory _$$CategoriesStateLoadedCopyWith(_$CategoriesStateLoaded value,
          $Res Function(_$CategoriesStateLoaded) then) =
      __$$CategoriesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoriesStateLoadedCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateLoaded>
    implements _$$CategoriesStateLoadedCopyWith<$Res> {
  __$$CategoriesStateLoadedCopyWithImpl(_$CategoriesStateLoaded _value,
      $Res Function(_$CategoriesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesStateLoaded(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoriesStateLoaded implements CategoriesStateLoaded {
  const _$CategoriesStateLoaded({required final List<Category> categories})
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.loaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateLoadedCopyWith<_$CategoriesStateLoaded> get copyWith =>
      __$$CategoriesStateLoadedCopyWithImpl<_$CategoriesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function() error,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesStateLoading value) loading,
    required TResult Function(CategoriesStateLoaded value) loaded,
    required TResult Function(CategoriesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesStateLoading value)? loading,
    TResult? Function(CategoriesStateLoaded value)? loaded,
    TResult? Function(CategoriesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesStateLoading value)? loading,
    TResult Function(CategoriesStateLoaded value)? loaded,
    TResult Function(CategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoriesStateLoaded implements CategoriesState {
  const factory CategoriesStateLoaded(
      {required final List<Category> categories}) = _$CategoriesStateLoaded;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$$CategoriesStateLoadedCopyWith<_$CategoriesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesStateErrorCopyWith<$Res> {
  factory _$$CategoriesStateErrorCopyWith(_$CategoriesStateError value,
          $Res Function(_$CategoriesStateError) then) =
      __$$CategoriesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesStateErrorCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateError>
    implements _$$CategoriesStateErrorCopyWith<$Res> {
  __$$CategoriesStateErrorCopyWithImpl(_$CategoriesStateError _value,
      $Res Function(_$CategoriesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesStateError implements CategoriesStateError {
  const _$CategoriesStateError();

  @override
  String toString() {
    return 'CategoriesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoriesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoriesStateLoading value) loading,
    required TResult Function(CategoriesStateLoaded value) loaded,
    required TResult Function(CategoriesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesStateLoading value)? loading,
    TResult? Function(CategoriesStateLoaded value)? loaded,
    TResult? Function(CategoriesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesStateLoading value)? loading,
    TResult Function(CategoriesStateLoaded value)? loaded,
    TResult Function(CategoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoriesStateError implements CategoriesState {
  const factory CategoriesStateError() = _$CategoriesStateError;
}
