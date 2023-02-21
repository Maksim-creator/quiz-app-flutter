import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/categories_repo.dart';
import '../models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepo categoriesRepo;
  CategoriesBloc({required this.categoriesRepo})
      : super(const CategoriesState.loading()) {
    on<CategoriesEventGetAvailableCategories>((event, emit) async {
      emit(const CategoriesState.loading());

      try {
        List<Category> categories =
            await categoriesRepo.getAvailableCategories();

        emit(CategoriesState.loaded(categories: categories));
      } catch (e) {
        emit(const CategoriesState.error());
      }
    });
  }
}
