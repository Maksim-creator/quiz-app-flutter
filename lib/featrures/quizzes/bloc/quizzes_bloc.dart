import 'package:either_dart/src/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/quiz.dart';

part 'quizzes_bloc.freezed.dart';
part 'quizzes_event.dart';

@freezed
abstract class QuizzesState with _$QuizzesState {
  const factory QuizzesState({
    required TopSelected topSelected,
    required List<Topic> topics,
    required List<Question> questions,
    @Default(false) bool isLoading,
    @Default('') error,
  }) = _QuizzesState;
}

class QuizzesBloc extends Bloc<QuizzesEvent, QuizzesState> {
  final QuizzesRepo quizzesRepo;
  QuizzesBloc({required this.quizzesRepo})
      : super(const QuizzesState(
            topSelected: TopSelected(
                id: '', category: '', icon: '', topic: '', quizzesCount: 0),
            topics: [],
            questions: []));

  @override
  Stream<QuizzesState> mapEventToState(QuizzesEvent event) async* {
    yield* event.when(getTopSelected: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      TopSelected topSelected = await quizzesRepo.getTopSelectedQuiz();

      final updatedState =
          loadingState.copyWith(isLoading: false, topSelected: topSelected);

      yield updatedState;
    }, getTopicsList: (category) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      List<Topic> topics = await quizzesRepo.getTopicsByCategory(category);

      final updatedState =
          loadingState.copyWith(isLoading: false, topics: topics);

      yield updatedState;
    }, getQuestionsList: (topic, count) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      List<Question> questions =
          await quizzesRepo.getQuizzesByTopic(topic, count);

      final updatedState =
          loadingState.copyWith(isLoading: false, questions: questions);
      yield updatedState;
    }, getAllTopics: (context) async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      final Either<String, List<Topic>> result =
          await quizzesRepo.getAllTopics();

      yield* result.fold((error) async* {
        final updatedState = currentState.copyWith(
          error: error,
          isLoading: false,
        );
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red.shade600,
          duration: const Duration(seconds: 2),
          content: Text(error),
        ));
        yield updatedState;
      }, (topics) async* {
        topics.sort(
            (prev, next) => next.selectedTimes.compareTo(prev.selectedTimes));

        final updatedState =
            currentState.copyWith(isLoading: false, topics: topics);
        yield updatedState;
      });
    });
  }
}
