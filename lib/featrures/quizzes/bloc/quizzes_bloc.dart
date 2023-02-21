import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/quiz.dart';

part 'quizzes_bloc.freezed.dart';
part 'quizzes_event.dart';
part 'quizzes_state.dart';

class QuizzesBloc extends Bloc<QuizzesEvent, QuizzesState> {
  final QuizzesRepo quizzesRepo;
  QuizzesBloc({required this.quizzesRepo})
      : super(const QuizzesState.loading()) {
    on<QuizzesEventGetTopSelected>((event, emit) async {
      emit(const QuizzesState.loading());

      try {
        TopSelected topSelected = await quizzesRepo.getTopSelectedQuiz();

        emit(QuizzesState.loaded(topSelected: topSelected));
      } catch (e) {
        emit(const QuizzesState.error());
      }
    });
  }
}
