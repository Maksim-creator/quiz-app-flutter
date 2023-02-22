// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizzes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizzesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(QuizzesEventGetTopicsList value) getTopicsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(QuizzesEventGetTopicsList value)? getTopicsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(QuizzesEventGetTopicsList value)? getTopicsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzesEventCopyWith<$Res> {
  factory $QuizzesEventCopyWith(
          QuizzesEvent value, $Res Function(QuizzesEvent) then) =
      _$QuizzesEventCopyWithImpl<$Res, QuizzesEvent>;
}

/// @nodoc
class _$QuizzesEventCopyWithImpl<$Res, $Val extends QuizzesEvent>
    implements $QuizzesEventCopyWith<$Res> {
  _$QuizzesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizzesEventGetTopSelectedCopyWith<$Res> {
  factory _$$QuizzesEventGetTopSelectedCopyWith(
          _$QuizzesEventGetTopSelected value,
          $Res Function(_$QuizzesEventGetTopSelected) then) =
      __$$QuizzesEventGetTopSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesEventGetTopSelectedCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$QuizzesEventGetTopSelected>
    implements _$$QuizzesEventGetTopSelectedCopyWith<$Res> {
  __$$QuizzesEventGetTopSelectedCopyWithImpl(
      _$QuizzesEventGetTopSelected _value,
      $Res Function(_$QuizzesEventGetTopSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesEventGetTopSelected implements QuizzesEventGetTopSelected {
  const _$QuizzesEventGetTopSelected();

  @override
  String toString() {
    return 'QuizzesEvent.getTopSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesEventGetTopSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
  }) {
    return getTopSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
  }) {
    return getTopSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    required TResult orElse(),
  }) {
    if (getTopSelected != null) {
      return getTopSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(QuizzesEventGetTopicsList value) getTopicsList,
  }) {
    return getTopSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(QuizzesEventGetTopicsList value)? getTopicsList,
  }) {
    return getTopSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(QuizzesEventGetTopicsList value)? getTopicsList,
    required TResult orElse(),
  }) {
    if (getTopSelected != null) {
      return getTopSelected(this);
    }
    return orElse();
  }
}

abstract class QuizzesEventGetTopSelected implements QuizzesEvent {
  const factory QuizzesEventGetTopSelected() = _$QuizzesEventGetTopSelected;
}

/// @nodoc
abstract class _$$QuizzesEventGetTopicsListCopyWith<$Res> {
  factory _$$QuizzesEventGetTopicsListCopyWith(
          _$QuizzesEventGetTopicsList value,
          $Res Function(_$QuizzesEventGetTopicsList) then) =
      __$$QuizzesEventGetTopicsListCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$QuizzesEventGetTopicsListCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$QuizzesEventGetTopicsList>
    implements _$$QuizzesEventGetTopicsListCopyWith<$Res> {
  __$$QuizzesEventGetTopicsListCopyWithImpl(_$QuizzesEventGetTopicsList _value,
      $Res Function(_$QuizzesEventGetTopicsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$QuizzesEventGetTopicsList(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuizzesEventGetTopicsList implements QuizzesEventGetTopicsList {
  const _$QuizzesEventGetTopicsList({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'QuizzesEvent.getTopicsList(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesEventGetTopicsList &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzesEventGetTopicsListCopyWith<_$QuizzesEventGetTopicsList>
      get copyWith => __$$QuizzesEventGetTopicsListCopyWithImpl<
          _$QuizzesEventGetTopicsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
  }) {
    return getTopicsList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
  }) {
    return getTopicsList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    required TResult orElse(),
  }) {
    if (getTopicsList != null) {
      return getTopicsList(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(QuizzesEventGetTopicsList value) getTopicsList,
  }) {
    return getTopicsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(QuizzesEventGetTopicsList value)? getTopicsList,
  }) {
    return getTopicsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(QuizzesEventGetTopicsList value)? getTopicsList,
    required TResult orElse(),
  }) {
    if (getTopicsList != null) {
      return getTopicsList(this);
    }
    return orElse();
  }
}

abstract class QuizzesEventGetTopicsList implements QuizzesEvent {
  const factory QuizzesEventGetTopicsList({required final String category}) =
      _$QuizzesEventGetTopicsList;

  String get category;
  @JsonKey(ignore: true)
  _$$QuizzesEventGetTopicsListCopyWith<_$QuizzesEventGetTopicsList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizzesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected topSelected) topSelectedLoaded,
    required TResult Function(List<Topic> topics) topicsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected topSelected)? topSelectedLoaded,
    TResult? Function(List<Topic> topics)? topicsLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected topSelected)? topSelectedLoaded,
    TResult Function(List<Topic> topics)? topicsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateTopSelectedLoaded value)
        topSelectedLoaded,
    required TResult Function(QuizzesStateTopicsLoaded value) topicsLoaded,
    required TResult Function(QuizzesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult? Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult? Function(QuizzesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzesStateCopyWith<$Res> {
  factory $QuizzesStateCopyWith(
          QuizzesState value, $Res Function(QuizzesState) then) =
      _$QuizzesStateCopyWithImpl<$Res, QuizzesState>;
}

/// @nodoc
class _$QuizzesStateCopyWithImpl<$Res, $Val extends QuizzesState>
    implements $QuizzesStateCopyWith<$Res> {
  _$QuizzesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizzesStateLoadingCopyWith<$Res> {
  factory _$$QuizzesStateLoadingCopyWith(_$QuizzesStateLoading value,
          $Res Function(_$QuizzesStateLoading) then) =
      __$$QuizzesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesStateLoadingCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateLoading>
    implements _$$QuizzesStateLoadingCopyWith<$Res> {
  __$$QuizzesStateLoadingCopyWithImpl(
      _$QuizzesStateLoading _value, $Res Function(_$QuizzesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesStateLoading implements QuizzesStateLoading {
  const _$QuizzesStateLoading();

  @override
  String toString() {
    return 'QuizzesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizzesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected topSelected) topSelectedLoaded,
    required TResult Function(List<Topic> topics) topicsLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected topSelected)? topSelectedLoaded,
    TResult? Function(List<Topic> topics)? topicsLoaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected topSelected)? topSelectedLoaded,
    TResult Function(List<Topic> topics)? topicsLoaded,
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
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateTopSelectedLoaded value)
        topSelectedLoaded,
    required TResult Function(QuizzesStateTopicsLoaded value) topicsLoaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult? Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateLoading implements QuizzesState {
  const factory QuizzesStateLoading() = _$QuizzesStateLoading;
}

/// @nodoc
abstract class _$$QuizzesStateTopSelectedLoadedCopyWith<$Res> {
  factory _$$QuizzesStateTopSelectedLoadedCopyWith(
          _$QuizzesStateTopSelectedLoaded value,
          $Res Function(_$QuizzesStateTopSelectedLoaded) then) =
      __$$QuizzesStateTopSelectedLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({TopSelected topSelected});

  $TopSelectedCopyWith<$Res> get topSelected;
}

/// @nodoc
class __$$QuizzesStateTopSelectedLoadedCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateTopSelectedLoaded>
    implements _$$QuizzesStateTopSelectedLoadedCopyWith<$Res> {
  __$$QuizzesStateTopSelectedLoadedCopyWithImpl(
      _$QuizzesStateTopSelectedLoaded _value,
      $Res Function(_$QuizzesStateTopSelectedLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSelected = null,
  }) {
    return _then(_$QuizzesStateTopSelectedLoaded(
      topSelected: null == topSelected
          ? _value.topSelected
          : topSelected // ignore: cast_nullable_to_non_nullable
              as TopSelected,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TopSelectedCopyWith<$Res> get topSelected {
    return $TopSelectedCopyWith<$Res>(_value.topSelected, (value) {
      return _then(_value.copyWith(topSelected: value));
    });
  }
}

/// @nodoc

class _$QuizzesStateTopSelectedLoaded implements QuizzesStateTopSelectedLoaded {
  const _$QuizzesStateTopSelectedLoaded({required this.topSelected});

  @override
  final TopSelected topSelected;

  @override
  String toString() {
    return 'QuizzesState.topSelectedLoaded(topSelected: $topSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesStateTopSelectedLoaded &&
            (identical(other.topSelected, topSelected) ||
                other.topSelected == topSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzesStateTopSelectedLoadedCopyWith<_$QuizzesStateTopSelectedLoaded>
      get copyWith => __$$QuizzesStateTopSelectedLoadedCopyWithImpl<
          _$QuizzesStateTopSelectedLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected topSelected) topSelectedLoaded,
    required TResult Function(List<Topic> topics) topicsLoaded,
    required TResult Function() error,
  }) {
    return topSelectedLoaded(topSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected topSelected)? topSelectedLoaded,
    TResult? Function(List<Topic> topics)? topicsLoaded,
    TResult? Function()? error,
  }) {
    return topSelectedLoaded?.call(topSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected topSelected)? topSelectedLoaded,
    TResult Function(List<Topic> topics)? topicsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (topSelectedLoaded != null) {
      return topSelectedLoaded(topSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateTopSelectedLoaded value)
        topSelectedLoaded,
    required TResult Function(QuizzesStateTopicsLoaded value) topicsLoaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return topSelectedLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult? Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return topSelectedLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (topSelectedLoaded != null) {
      return topSelectedLoaded(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateTopSelectedLoaded implements QuizzesState {
  const factory QuizzesStateTopSelectedLoaded(
          {required final TopSelected topSelected}) =
      _$QuizzesStateTopSelectedLoaded;

  TopSelected get topSelected;
  @JsonKey(ignore: true)
  _$$QuizzesStateTopSelectedLoadedCopyWith<_$QuizzesStateTopSelectedLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizzesStateTopicsLoadedCopyWith<$Res> {
  factory _$$QuizzesStateTopicsLoadedCopyWith(_$QuizzesStateTopicsLoaded value,
          $Res Function(_$QuizzesStateTopicsLoaded) then) =
      __$$QuizzesStateTopicsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$QuizzesStateTopicsLoadedCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateTopicsLoaded>
    implements _$$QuizzesStateTopicsLoadedCopyWith<$Res> {
  __$$QuizzesStateTopicsLoadedCopyWithImpl(_$QuizzesStateTopicsLoaded _value,
      $Res Function(_$QuizzesStateTopicsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$QuizzesStateTopicsLoaded(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$QuizzesStateTopicsLoaded implements QuizzesStateTopicsLoaded {
  const _$QuizzesStateTopicsLoaded({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'QuizzesState.topicsLoaded(topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzesStateTopicsLoaded &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzesStateTopicsLoadedCopyWith<_$QuizzesStateTopicsLoaded>
      get copyWith =>
          __$$QuizzesStateTopicsLoadedCopyWithImpl<_$QuizzesStateTopicsLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected topSelected) topSelectedLoaded,
    required TResult Function(List<Topic> topics) topicsLoaded,
    required TResult Function() error,
  }) {
    return topicsLoaded(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected topSelected)? topSelectedLoaded,
    TResult? Function(List<Topic> topics)? topicsLoaded,
    TResult? Function()? error,
  }) {
    return topicsLoaded?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected topSelected)? topSelectedLoaded,
    TResult Function(List<Topic> topics)? topicsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (topicsLoaded != null) {
      return topicsLoaded(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateTopSelectedLoaded value)
        topSelectedLoaded,
    required TResult Function(QuizzesStateTopicsLoaded value) topicsLoaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return topicsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult? Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return topicsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (topicsLoaded != null) {
      return topicsLoaded(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateTopicsLoaded implements QuizzesState {
  const factory QuizzesStateTopicsLoaded({required final List<Topic> topics}) =
      _$QuizzesStateTopicsLoaded;

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$QuizzesStateTopicsLoadedCopyWith<_$QuizzesStateTopicsLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizzesStateErrorCopyWith<$Res> {
  factory _$$QuizzesStateErrorCopyWith(
          _$QuizzesStateError value, $Res Function(_$QuizzesStateError) then) =
      __$$QuizzesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizzesStateErrorCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$QuizzesStateError>
    implements _$$QuizzesStateErrorCopyWith<$Res> {
  __$$QuizzesStateErrorCopyWithImpl(
      _$QuizzesStateError _value, $Res Function(_$QuizzesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizzesStateError implements QuizzesStateError {
  const _$QuizzesStateError();

  @override
  String toString() {
    return 'QuizzesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizzesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TopSelected topSelected) topSelectedLoaded,
    required TResult Function(List<Topic> topics) topicsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TopSelected topSelected)? topSelectedLoaded,
    TResult? Function(List<Topic> topics)? topicsLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TopSelected topSelected)? topSelectedLoaded,
    TResult Function(List<Topic> topics)? topicsLoaded,
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
    required TResult Function(QuizzesStateLoading value) loading,
    required TResult Function(QuizzesStateTopSelectedLoaded value)
        topSelectedLoaded,
    required TResult Function(QuizzesStateTopicsLoaded value) topicsLoaded,
    required TResult Function(QuizzesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizzesStateLoading value)? loading,
    TResult? Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult? Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult? Function(QuizzesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizzesStateLoading value)? loading,
    TResult Function(QuizzesStateTopSelectedLoaded value)? topSelectedLoaded,
    TResult Function(QuizzesStateTopicsLoaded value)? topicsLoaded,
    TResult Function(QuizzesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuizzesStateError implements QuizzesState {
  const factory QuizzesStateError() = _$QuizzesStateError;
}
