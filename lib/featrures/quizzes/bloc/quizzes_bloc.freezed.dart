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
mixin _$QuizzesState {
  TopSelected get topSelected => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizzesStateCopyWith<QuizzesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzesStateCopyWith<$Res> {
  factory $QuizzesStateCopyWith(
          QuizzesState value, $Res Function(QuizzesState) then) =
      _$QuizzesStateCopyWithImpl<$Res, QuizzesState>;
  @useResult
  $Res call(
      {TopSelected topSelected,
      List<Topic> topics,
      List<Question> questions,
      bool isLoading,
      dynamic error});

  $TopSelectedCopyWith<$Res> get topSelected;
}

/// @nodoc
class _$QuizzesStateCopyWithImpl<$Res, $Val extends QuizzesState>
    implements $QuizzesStateCopyWith<$Res> {
  _$QuizzesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSelected = null,
    Object? topics = null,
    Object? questions = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      topSelected: null == topSelected
          ? _value.topSelected
          : topSelected // ignore: cast_nullable_to_non_nullable
              as TopSelected,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopSelectedCopyWith<$Res> get topSelected {
    return $TopSelectedCopyWith<$Res>(_value.topSelected, (value) {
      return _then(_value.copyWith(topSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuizzesStateCopyWith<$Res>
    implements $QuizzesStateCopyWith<$Res> {
  factory _$$_QuizzesStateCopyWith(
          _$_QuizzesState value, $Res Function(_$_QuizzesState) then) =
      __$$_QuizzesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopSelected topSelected,
      List<Topic> topics,
      List<Question> questions,
      bool isLoading,
      dynamic error});

  @override
  $TopSelectedCopyWith<$Res> get topSelected;
}

/// @nodoc
class __$$_QuizzesStateCopyWithImpl<$Res>
    extends _$QuizzesStateCopyWithImpl<$Res, _$_QuizzesState>
    implements _$$_QuizzesStateCopyWith<$Res> {
  __$$_QuizzesStateCopyWithImpl(
      _$_QuizzesState _value, $Res Function(_$_QuizzesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topSelected = null,
    Object? topics = null,
    Object? questions = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_QuizzesState(
      topSelected: null == topSelected
          ? _value.topSelected
          : topSelected // ignore: cast_nullable_to_non_nullable
              as TopSelected,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error! : error,
    ));
  }
}

/// @nodoc

class _$_QuizzesState implements _QuizzesState {
  const _$_QuizzesState(
      {required this.topSelected,
      required final List<Topic> topics,
      required final List<Question> questions,
      this.isLoading = false,
      this.error = ''})
      : _topics = topics,
        _questions = questions;

  @override
  final TopSelected topSelected;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final dynamic error;

  @override
  String toString() {
    return 'QuizzesState(topSelected: $topSelected, topics: $topics, questions: $questions, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizzesState &&
            (identical(other.topSelected, topSelected) ||
                other.topSelected == topSelected) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      topSelected,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_questions),
      isLoading,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizzesStateCopyWith<_$_QuizzesState> get copyWith =>
      __$$_QuizzesStateCopyWithImpl<_$_QuizzesState>(this, _$identity);
}

abstract class _QuizzesState implements QuizzesState {
  const factory _QuizzesState(
      {required final TopSelected topSelected,
      required final List<Topic> topics,
      required final List<Question> questions,
      final bool isLoading,
      final dynamic error}) = _$_QuizzesState;

  @override
  TopSelected get topSelected;
  @override
  List<Topic> get topics;
  @override
  List<Question> get questions;
  @override
  bool get isLoading;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$_QuizzesStateCopyWith<_$_QuizzesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizzesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
    required TResult Function(String topic, int count) getQuestionsList,
    required TResult Function(BuildContext context) getAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
    TResult? Function(String topic, int count)? getQuestionsList,
    TResult? Function(BuildContext context)? getAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    TResult Function(String topic, int count)? getQuestionsList,
    TResult Function(BuildContext context)? getAllTopics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(_QuizzesEventGetTopicsList value) getTopicsList,
    required TResult Function(_QuizzesEventGetQuestionsList value)
        getQuestionsList,
    required TResult Function(_QuizzesEventGetAllTopics value) getAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult? Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult? Function(_QuizzesEventGetAllTopics value)? getAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult Function(_QuizzesEventGetAllTopics value)? getAllTopics,
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
abstract class _$$_QuizzesEventGetTopSelectedCopyWith<$Res> {
  factory _$$_QuizzesEventGetTopSelectedCopyWith(
          _$_QuizzesEventGetTopSelected value,
          $Res Function(_$_QuizzesEventGetTopSelected) then) =
      __$$_QuizzesEventGetTopSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuizzesEventGetTopSelectedCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$_QuizzesEventGetTopSelected>
    implements _$$_QuizzesEventGetTopSelectedCopyWith<$Res> {
  __$$_QuizzesEventGetTopSelectedCopyWithImpl(
      _$_QuizzesEventGetTopSelected _value,
      $Res Function(_$_QuizzesEventGetTopSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QuizzesEventGetTopSelected implements _QuizzesEventGetTopSelected {
  const _$_QuizzesEventGetTopSelected();

  @override
  String toString() {
    return 'QuizzesEvent.getTopSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizzesEventGetTopSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
    required TResult Function(String topic, int count) getQuestionsList,
    required TResult Function(BuildContext context) getAllTopics,
  }) {
    return getTopSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
    TResult? Function(String topic, int count)? getQuestionsList,
    TResult? Function(BuildContext context)? getAllTopics,
  }) {
    return getTopSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    TResult Function(String topic, int count)? getQuestionsList,
    TResult Function(BuildContext context)? getAllTopics,
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
    required TResult Function(_QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(_QuizzesEventGetTopicsList value) getTopicsList,
    required TResult Function(_QuizzesEventGetQuestionsList value)
        getQuestionsList,
    required TResult Function(_QuizzesEventGetAllTopics value) getAllTopics,
  }) {
    return getTopSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult? Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult? Function(_QuizzesEventGetAllTopics value)? getAllTopics,
  }) {
    return getTopSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult Function(_QuizzesEventGetAllTopics value)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getTopSelected != null) {
      return getTopSelected(this);
    }
    return orElse();
  }
}

abstract class _QuizzesEventGetTopSelected implements QuizzesEvent {
  const factory _QuizzesEventGetTopSelected() = _$_QuizzesEventGetTopSelected;
}

/// @nodoc
abstract class _$$_QuizzesEventGetTopicsListCopyWith<$Res> {
  factory _$$_QuizzesEventGetTopicsListCopyWith(
          _$_QuizzesEventGetTopicsList value,
          $Res Function(_$_QuizzesEventGetTopicsList) then) =
      __$$_QuizzesEventGetTopicsListCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_QuizzesEventGetTopicsListCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$_QuizzesEventGetTopicsList>
    implements _$$_QuizzesEventGetTopicsListCopyWith<$Res> {
  __$$_QuizzesEventGetTopicsListCopyWithImpl(
      _$_QuizzesEventGetTopicsList _value,
      $Res Function(_$_QuizzesEventGetTopicsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_QuizzesEventGetTopicsList(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuizzesEventGetTopicsList implements _QuizzesEventGetTopicsList {
  const _$_QuizzesEventGetTopicsList({required this.category});

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
            other is _$_QuizzesEventGetTopicsList &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizzesEventGetTopicsListCopyWith<_$_QuizzesEventGetTopicsList>
      get copyWith => __$$_QuizzesEventGetTopicsListCopyWithImpl<
          _$_QuizzesEventGetTopicsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
    required TResult Function(String topic, int count) getQuestionsList,
    required TResult Function(BuildContext context) getAllTopics,
  }) {
    return getTopicsList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
    TResult? Function(String topic, int count)? getQuestionsList,
    TResult? Function(BuildContext context)? getAllTopics,
  }) {
    return getTopicsList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    TResult Function(String topic, int count)? getQuestionsList,
    TResult Function(BuildContext context)? getAllTopics,
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
    required TResult Function(_QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(_QuizzesEventGetTopicsList value) getTopicsList,
    required TResult Function(_QuizzesEventGetQuestionsList value)
        getQuestionsList,
    required TResult Function(_QuizzesEventGetAllTopics value) getAllTopics,
  }) {
    return getTopicsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult? Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult? Function(_QuizzesEventGetAllTopics value)? getAllTopics,
  }) {
    return getTopicsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult Function(_QuizzesEventGetAllTopics value)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getTopicsList != null) {
      return getTopicsList(this);
    }
    return orElse();
  }
}

abstract class _QuizzesEventGetTopicsList implements QuizzesEvent {
  const factory _QuizzesEventGetTopicsList({required final String category}) =
      _$_QuizzesEventGetTopicsList;

  String get category;
  @JsonKey(ignore: true)
  _$$_QuizzesEventGetTopicsListCopyWith<_$_QuizzesEventGetTopicsList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizzesEventGetQuestionsListCopyWith<$Res> {
  factory _$$_QuizzesEventGetQuestionsListCopyWith(
          _$_QuizzesEventGetQuestionsList value,
          $Res Function(_$_QuizzesEventGetQuestionsList) then) =
      __$$_QuizzesEventGetQuestionsListCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic, int count});
}

/// @nodoc
class __$$_QuizzesEventGetQuestionsListCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$_QuizzesEventGetQuestionsList>
    implements _$$_QuizzesEventGetQuestionsListCopyWith<$Res> {
  __$$_QuizzesEventGetQuestionsListCopyWithImpl(
      _$_QuizzesEventGetQuestionsList _value,
      $Res Function(_$_QuizzesEventGetQuestionsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? count = null,
  }) {
    return _then(_$_QuizzesEventGetQuestionsList(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuizzesEventGetQuestionsList implements _QuizzesEventGetQuestionsList {
  const _$_QuizzesEventGetQuestionsList(
      {required this.topic, required this.count});

  @override
  final String topic;
  @override
  final int count;

  @override
  String toString() {
    return 'QuizzesEvent.getQuestionsList(topic: $topic, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizzesEventGetQuestionsList &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizzesEventGetQuestionsListCopyWith<_$_QuizzesEventGetQuestionsList>
      get copyWith => __$$_QuizzesEventGetQuestionsListCopyWithImpl<
          _$_QuizzesEventGetQuestionsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
    required TResult Function(String topic, int count) getQuestionsList,
    required TResult Function(BuildContext context) getAllTopics,
  }) {
    return getQuestionsList(topic, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
    TResult? Function(String topic, int count)? getQuestionsList,
    TResult? Function(BuildContext context)? getAllTopics,
  }) {
    return getQuestionsList?.call(topic, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    TResult Function(String topic, int count)? getQuestionsList,
    TResult Function(BuildContext context)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getQuestionsList != null) {
      return getQuestionsList(topic, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(_QuizzesEventGetTopicsList value) getTopicsList,
    required TResult Function(_QuizzesEventGetQuestionsList value)
        getQuestionsList,
    required TResult Function(_QuizzesEventGetAllTopics value) getAllTopics,
  }) {
    return getQuestionsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult? Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult? Function(_QuizzesEventGetAllTopics value)? getAllTopics,
  }) {
    return getQuestionsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult Function(_QuizzesEventGetAllTopics value)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getQuestionsList != null) {
      return getQuestionsList(this);
    }
    return orElse();
  }
}

abstract class _QuizzesEventGetQuestionsList implements QuizzesEvent {
  const factory _QuizzesEventGetQuestionsList(
      {required final String topic,
      required final int count}) = _$_QuizzesEventGetQuestionsList;

  String get topic;
  int get count;
  @JsonKey(ignore: true)
  _$$_QuizzesEventGetQuestionsListCopyWith<_$_QuizzesEventGetQuestionsList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuizzesEventGetAllTopicsCopyWith<$Res> {
  factory _$$_QuizzesEventGetAllTopicsCopyWith(
          _$_QuizzesEventGetAllTopics value,
          $Res Function(_$_QuizzesEventGetAllTopics) then) =
      __$$_QuizzesEventGetAllTopicsCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_QuizzesEventGetAllTopicsCopyWithImpl<$Res>
    extends _$QuizzesEventCopyWithImpl<$Res, _$_QuizzesEventGetAllTopics>
    implements _$$_QuizzesEventGetAllTopicsCopyWith<$Res> {
  __$$_QuizzesEventGetAllTopicsCopyWithImpl(_$_QuizzesEventGetAllTopics _value,
      $Res Function(_$_QuizzesEventGetAllTopics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_QuizzesEventGetAllTopics(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_QuizzesEventGetAllTopics implements _QuizzesEventGetAllTopics {
  const _$_QuizzesEventGetAllTopics({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'QuizzesEvent.getAllTopics(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizzesEventGetAllTopics &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizzesEventGetAllTopicsCopyWith<_$_QuizzesEventGetAllTopics>
      get copyWith => __$$_QuizzesEventGetAllTopicsCopyWithImpl<
          _$_QuizzesEventGetAllTopics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSelected,
    required TResult Function(String category) getTopicsList,
    required TResult Function(String topic, int count) getQuestionsList,
    required TResult Function(BuildContext context) getAllTopics,
  }) {
    return getAllTopics(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSelected,
    TResult? Function(String category)? getTopicsList,
    TResult? Function(String topic, int count)? getQuestionsList,
    TResult? Function(BuildContext context)? getAllTopics,
  }) {
    return getAllTopics?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSelected,
    TResult Function(String category)? getTopicsList,
    TResult Function(String topic, int count)? getQuestionsList,
    TResult Function(BuildContext context)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getAllTopics != null) {
      return getAllTopics(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizzesEventGetTopSelected value) getTopSelected,
    required TResult Function(_QuizzesEventGetTopicsList value) getTopicsList,
    required TResult Function(_QuizzesEventGetQuestionsList value)
        getQuestionsList,
    required TResult Function(_QuizzesEventGetAllTopics value) getAllTopics,
  }) {
    return getAllTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult? Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult? Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult? Function(_QuizzesEventGetAllTopics value)? getAllTopics,
  }) {
    return getAllTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizzesEventGetTopSelected value)? getTopSelected,
    TResult Function(_QuizzesEventGetTopicsList value)? getTopicsList,
    TResult Function(_QuizzesEventGetQuestionsList value)? getQuestionsList,
    TResult Function(_QuizzesEventGetAllTopics value)? getAllTopics,
    required TResult orElse(),
  }) {
    if (getAllTopics != null) {
      return getAllTopics(this);
    }
    return orElse();
  }
}

abstract class _QuizzesEventGetAllTopics implements QuizzesEvent {
  const factory _QuizzesEventGetAllTopics(
      {required final BuildContext context}) = _$_QuizzesEventGetAllTopics;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_QuizzesEventGetAllTopicsCopyWith<_$_QuizzesEventGetAllTopics>
      get copyWith => throw _privateConstructorUsedError;
}
