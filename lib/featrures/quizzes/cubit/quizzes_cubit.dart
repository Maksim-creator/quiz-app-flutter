import 'package:bloc/bloc.dart';
import 'package:quizz_app/api/entities.dart';

part 'quizzes_state.dart';

class QuizzesCubit extends Cubit<QuizzesState> {
  QuizzesCubit() : super(QuizzesState(categories: []));

  void setCategories(List<Category> categories) =>
      emit(QuizzesState(categories: categories));
}
