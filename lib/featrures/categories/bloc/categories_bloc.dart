import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/categories_repo.dart';
import '../models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required List<Category> categories,
    @Default(false) bool isLoading,
  }) = _CategoriesState;
}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepo categoriesRepo;
  CategoriesBloc({required this.categoriesRepo})
      : super(const CategoriesState(categories: []));

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    yield* event.when(getAvailableCategories: () async* {
      final currentState = state;
      final loadingState = currentState.copyWith(isLoading: true);
      yield loadingState;

      List<Category> categories = await categoriesRepo.getAvailableCategories();

      final updatedState = currentState.copyWith(
        categories: categories,
        isLoading: false,
      );
      yield updatedState;
    });
  }
}
