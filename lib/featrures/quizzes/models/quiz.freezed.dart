// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  int get selectedTimes => throw _privateConstructorUsedError;
  int get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String id,
      String topic,
      String icon,
      String category,
      List<Question> questions,
      int selectedTimes,
      int author});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? icon = null,
    Object? category = null,
    Object? questions = null,
    Object? selectedTimes = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      selectedTimes: null == selectedTimes
          ? _value.selectedTimes
          : selectedTimes // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizCopyWith(_$_Quiz value, $Res Function(_$_Quiz) then) =
      __$$_QuizCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String topic,
      String icon,
      String category,
      List<Question> questions,
      int selectedTimes,
      int author});
}

/// @nodoc
class __$$_QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res, _$_Quiz>
    implements _$$_QuizCopyWith<$Res> {
  __$$_QuizCopyWithImpl(_$_Quiz _value, $Res Function(_$_Quiz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? icon = null,
    Object? category = null,
    Object? questions = null,
    Object? selectedTimes = null,
    Object? author = null,
  }) {
    return _then(_$_Quiz(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      selectedTimes: null == selectedTimes
          ? _value.selectedTimes
          : selectedTimes // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quiz with DiagnosticableTreeMixin implements _Quiz {
  const _$_Quiz(
      {required this.id,
      required this.topic,
      required this.icon,
      required this.category,
      required final List<Question> questions,
      required this.selectedTimes,
      required this.author})
      : _questions = questions;

  factory _$_Quiz.fromJson(Map<String, dynamic> json) => _$$_QuizFromJson(json);

  @override
  final String id;
  @override
  final String topic;
  @override
  final String icon;
  @override
  final String category;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int selectedTimes;
  @override
  final int author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Quiz(id: $id, topic: $topic, icon: $icon, category: $category, questions: $questions, selectedTimes: $selectedTimes, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Quiz'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('selectedTimes', selectedTimes))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quiz &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.selectedTimes, selectedTimes) ||
                other.selectedTimes == selectedTimes) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, topic, icon, category,
      const DeepCollectionEquality().hash(_questions), selectedTimes, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizCopyWith<_$_Quiz> get copyWith =>
      __$$_QuizCopyWithImpl<_$_Quiz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {required final String id,
      required final String topic,
      required final String icon,
      required final String category,
      required final List<Question> questions,
      required final int selectedTimes,
      required final int author}) = _$_Quiz;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$_Quiz.fromJson;

  @override
  String get id;
  @override
  String get topic;
  @override
  String get icon;
  @override
  String get category;
  @override
  List<Question> get questions;
  @override
  int get selectedTimes;
  @override
  int get author;
  @override
  @JsonKey(ignore: true)
  _$$_QuizCopyWith<_$_Quiz> get copyWith => throw _privateConstructorUsedError;
}

TopSelected _$TopSelectedFromJson(Map<String, dynamic> json) {
  return _TopSelected.fromJson(json);
}

/// @nodoc
mixin _$TopSelected {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  int get quizzesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSelectedCopyWith<TopSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSelectedCopyWith<$Res> {
  factory $TopSelectedCopyWith(
          TopSelected value, $Res Function(TopSelected) then) =
      _$TopSelectedCopyWithImpl<$Res, TopSelected>;
  @useResult
  $Res call(
      {String id,
      String category,
      String icon,
      String topic,
      int quizzesCount});
}

/// @nodoc
class _$TopSelectedCopyWithImpl<$Res, $Val extends TopSelected>
    implements $TopSelectedCopyWith<$Res> {
  _$TopSelectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? icon = null,
    Object? topic = null,
    Object? quizzesCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      quizzesCount: null == quizzesCount
          ? _value.quizzesCount
          : quizzesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopSelectedCopyWith<$Res>
    implements $TopSelectedCopyWith<$Res> {
  factory _$$_TopSelectedCopyWith(
          _$_TopSelected value, $Res Function(_$_TopSelected) then) =
      __$$_TopSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String icon,
      String topic,
      int quizzesCount});
}

/// @nodoc
class __$$_TopSelectedCopyWithImpl<$Res>
    extends _$TopSelectedCopyWithImpl<$Res, _$_TopSelected>
    implements _$$_TopSelectedCopyWith<$Res> {
  __$$_TopSelectedCopyWithImpl(
      _$_TopSelected _value, $Res Function(_$_TopSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? icon = null,
    Object? topic = null,
    Object? quizzesCount = null,
  }) {
    return _then(_$_TopSelected(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      quizzesCount: null == quizzesCount
          ? _value.quizzesCount
          : quizzesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopSelected with DiagnosticableTreeMixin implements _TopSelected {
  const _$_TopSelected(
      {required this.id,
      required this.category,
      required this.icon,
      required this.topic,
      required this.quizzesCount});

  factory _$_TopSelected.fromJson(Map<String, dynamic> json) =>
      _$$_TopSelectedFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String icon;
  @override
  final String topic;
  @override
  final int quizzesCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopSelected(id: $id, category: $category, icon: $icon, topic: $topic, quizzesCount: $quizzesCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopSelected'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('quizzesCount', quizzesCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopSelected &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.quizzesCount, quizzesCount) ||
                other.quizzesCount == quizzesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, icon, topic, quizzesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopSelectedCopyWith<_$_TopSelected> get copyWith =>
      __$$_TopSelectedCopyWithImpl<_$_TopSelected>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopSelectedToJson(
      this,
    );
  }
}

abstract class _TopSelected implements TopSelected {
  const factory _TopSelected(
      {required final String id,
      required final String category,
      required final String icon,
      required final String topic,
      required final int quizzesCount}) = _$_TopSelected;

  factory _TopSelected.fromJson(Map<String, dynamic> json) =
      _$_TopSelected.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get icon;
  @override
  String get topic;
  @override
  int get quizzesCount;
  @override
  @JsonKey(ignore: true)
  _$$_TopSelectedCopyWith<_$_TopSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Answers get answers => throw _privateConstructorUsedError;
  bool get multipleCorrectAnswers => throw _privateConstructorUsedError;
  CorrectAnswers get correctAnswers => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String? get tip => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String id,
      String question,
      String? description,
      Answers answers,
      bool multipleCorrectAnswers,
      CorrectAnswers correctAnswers,
      String? explanation,
      String? tip,
      String category,
      String difficulty});

  $AnswersCopyWith<$Res> get answers;
  $CorrectAnswersCopyWith<$Res> get correctAnswers;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? description = freezed,
    Object? answers = null,
    Object? multipleCorrectAnswers = null,
    Object? correctAnswers = null,
    Object? explanation = freezed,
    Object? tip = freezed,
    Object? category = null,
    Object? difficulty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Answers,
      multipleCorrectAnswers: null == multipleCorrectAnswers
          ? _value.multipleCorrectAnswers
          : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as CorrectAnswers,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswersCopyWith<$Res> get answers {
    return $AnswersCopyWith<$Res>(_value.answers, (value) {
      return _then(_value.copyWith(answers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CorrectAnswersCopyWith<$Res> get correctAnswers {
    return $CorrectAnswersCopyWith<$Res>(_value.correctAnswers, (value) {
      return _then(_value.copyWith(correctAnswers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      String? description,
      Answers answers,
      bool multipleCorrectAnswers,
      CorrectAnswers correctAnswers,
      String? explanation,
      String? tip,
      String category,
      String difficulty});

  @override
  $AnswersCopyWith<$Res> get answers;
  @override
  $CorrectAnswersCopyWith<$Res> get correctAnswers;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? description = freezed,
    Object? answers = null,
    Object? multipleCorrectAnswers = null,
    Object? correctAnswers = null,
    Object? explanation = freezed,
    Object? tip = freezed,
    Object? category = null,
    Object? difficulty = null,
  }) {
    return _then(_$_Question(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Answers,
      multipleCorrectAnswers: null == multipleCorrectAnswers
          ? _value.multipleCorrectAnswers
          : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as CorrectAnswers,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question with DiagnosticableTreeMixin implements _Question {
  const _$_Question(
      {required this.id,
      required this.question,
      required this.description,
      required this.answers,
      required this.multipleCorrectAnswers,
      required this.correctAnswers,
      required this.explanation,
      required this.tip,
      required this.category,
      required this.difficulty});

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final String? description;
  @override
  final Answers answers;
  @override
  final bool multipleCorrectAnswers;
  @override
  final CorrectAnswers correctAnswers;
  @override
  final String? explanation;
  @override
  final String? tip;
  @override
  final String category;
  @override
  final String difficulty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, tip: $tip, category: $category, difficulty: $difficulty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Question'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(
          DiagnosticsProperty('multipleCorrectAnswers', multipleCorrectAnswers))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers))
      ..add(DiagnosticsProperty('explanation', explanation))
      ..add(DiagnosticsProperty('tip', tip))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('difficulty', difficulty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.answers, answers) || other.answers == answers) &&
            (identical(other.multipleCorrectAnswers, multipleCorrectAnswers) ||
                other.multipleCorrectAnswers == multipleCorrectAnswers) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      description,
      answers,
      multipleCorrectAnswers,
      correctAnswers,
      explanation,
      tip,
      category,
      difficulty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final String id,
      required final String question,
      required final String? description,
      required final Answers answers,
      required final bool multipleCorrectAnswers,
      required final CorrectAnswers correctAnswers,
      required final String? explanation,
      required final String? tip,
      required final String category,
      required final String difficulty}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  String? get description;
  @override
  Answers get answers;
  @override
  bool get multipleCorrectAnswers;
  @override
  CorrectAnswers get correctAnswers;
  @override
  String? get explanation;
  @override
  String? get tip;
  @override
  String get category;
  @override
  String get difficulty;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String? get c => throw _privateConstructorUsedError;
  String? get d => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res, Answers>;
  @useResult
  $Res call({String a, String b, String? c, String? d});
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res, $Val extends Answers>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$_AnswersCopyWith(
          _$_Answers value, $Res Function(_$_Answers) then) =
      __$$_AnswersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, String b, String? c, String? d});
}

/// @nodoc
class __$$_AnswersCopyWithImpl<$Res>
    extends _$AnswersCopyWithImpl<$Res, _$_Answers>
    implements _$$_AnswersCopyWith<$Res> {
  __$$_AnswersCopyWithImpl(_$_Answers _value, $Res Function(_$_Answers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$_Answers(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answers with DiagnosticableTreeMixin implements _Answers {
  const _$_Answers(
      {required this.a, required this.b, required this.c, required this.d});

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  final String a;
  @override
  final String b;
  @override
  final String? c;
  @override
  final String? d;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Answers(a: $a, b: $b, c: $c, d: $d)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Answers'))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b))
      ..add(DiagnosticsProperty('c', c))
      ..add(DiagnosticsProperty('d', d));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answers &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b, c, d);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      __$$_AnswersCopyWithImpl<_$_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(
      this,
    );
  }
}

abstract class _Answers implements Answers {
  const factory _Answers(
      {required final String a,
      required final String b,
      required final String? c,
      required final String? d}) = _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  String get a;
  @override
  String get b;
  @override
  String? get c;
  @override
  String? get d;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}

CorrectAnswers _$CorrectAnswersFromJson(Map<String, dynamic> json) {
  return _CorrectAnswers.fromJson(json);
}

/// @nodoc
mixin _$CorrectAnswers {
  bool get a => throw _privateConstructorUsedError;
  bool get b => throw _privateConstructorUsedError;
  bool? get c => throw _privateConstructorUsedError;
  bool? get d => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectAnswersCopyWith<CorrectAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectAnswersCopyWith<$Res> {
  factory $CorrectAnswersCopyWith(
          CorrectAnswers value, $Res Function(CorrectAnswers) then) =
      _$CorrectAnswersCopyWithImpl<$Res, CorrectAnswers>;
  @useResult
  $Res call({bool a, bool b, bool? c, bool? d});
}

/// @nodoc
class _$CorrectAnswersCopyWithImpl<$Res, $Val extends CorrectAnswers>
    implements $CorrectAnswersCopyWith<$Res> {
  _$CorrectAnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as bool,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as bool,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as bool?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CorrectAnswersCopyWith<$Res>
    implements $CorrectAnswersCopyWith<$Res> {
  factory _$$_CorrectAnswersCopyWith(
          _$_CorrectAnswers value, $Res Function(_$_CorrectAnswers) then) =
      __$$_CorrectAnswersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool a, bool b, bool? c, bool? d});
}

/// @nodoc
class __$$_CorrectAnswersCopyWithImpl<$Res>
    extends _$CorrectAnswersCopyWithImpl<$Res, _$_CorrectAnswers>
    implements _$$_CorrectAnswersCopyWith<$Res> {
  __$$_CorrectAnswersCopyWithImpl(
      _$_CorrectAnswers _value, $Res Function(_$_CorrectAnswers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$_CorrectAnswers(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as bool,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as bool,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as bool?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CorrectAnswers
    with DiagnosticableTreeMixin
    implements _CorrectAnswers {
  const _$_CorrectAnswers(
      {required this.a, required this.b, required this.c, required this.d});

  factory _$_CorrectAnswers.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectAnswersFromJson(json);

  @override
  final bool a;
  @override
  final bool b;
  @override
  final bool? c;
  @override
  final bool? d;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CorrectAnswers(a: $a, b: $b, c: $c, d: $d)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CorrectAnswers'))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('b', b))
      ..add(DiagnosticsProperty('c', c))
      ..add(DiagnosticsProperty('d', d));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CorrectAnswers &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b, c, d);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CorrectAnswersCopyWith<_$_CorrectAnswers> get copyWith =>
      __$$_CorrectAnswersCopyWithImpl<_$_CorrectAnswers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectAnswersToJson(
      this,
    );
  }
}

abstract class _CorrectAnswers implements CorrectAnswers {
  const factory _CorrectAnswers(
      {required final bool a,
      required final bool b,
      required final bool? c,
      required final bool? d}) = _$_CorrectAnswers;

  factory _CorrectAnswers.fromJson(Map<String, dynamic> json) =
      _$_CorrectAnswers.fromJson;

  @override
  bool get a;
  @override
  bool get b;
  @override
  bool? get c;
  @override
  bool? get d;
  @override
  @JsonKey(ignore: true)
  _$$_CorrectAnswersCopyWith<_$_CorrectAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  int get selectedTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String id,
      String category,
      String topic,
      String icon,
      String author,
      int selectedTimes});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? topic = null,
    Object? icon = null,
    Object? author = null,
    Object? selectedTimes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTimes: null == selectedTimes
          ? _value.selectedTimes
          : selectedTimes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$_TopicCopyWith(_$_Topic value, $Res Function(_$_Topic) then) =
      __$$_TopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String topic,
      String icon,
      String author,
      int selectedTimes});
}

/// @nodoc
class __$$_TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res, _$_Topic>
    implements _$$_TopicCopyWith<$Res> {
  __$$_TopicCopyWithImpl(_$_Topic _value, $Res Function(_$_Topic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? topic = null,
    Object? icon = null,
    Object? author = null,
    Object? selectedTimes = null,
  }) {
    return _then(_$_Topic(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTimes: null == selectedTimes
          ? _value.selectedTimes
          : selectedTimes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topic with DiagnosticableTreeMixin implements _Topic {
  const _$_Topic(
      {required this.id,
      required this.category,
      required this.topic,
      required this.icon,
      required this.author,
      required this.selectedTimes});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$$_TopicFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String topic;
  @override
  final String icon;
  @override
  final String author;
  @override
  final int selectedTimes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topic(id: $id, category: $category, topic: $topic, icon: $icon, author: $author, selectedTimes: $selectedTimes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('selectedTimes', selectedTimes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.selectedTimes, selectedTimes) ||
                other.selectedTimes == selectedTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, topic, icon, author, selectedTimes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      __$$_TopicCopyWithImpl<_$_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {required final String id,
      required final String category,
      required final String topic,
      required final String icon,
      required final String author,
      required final int selectedTimes}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get topic;
  @override
  String get icon;
  @override
  String get author;
  @override
  int get selectedTimes;
  @override
  @JsonKey(ignore: true)
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      throw _privateConstructorUsedError;
}
