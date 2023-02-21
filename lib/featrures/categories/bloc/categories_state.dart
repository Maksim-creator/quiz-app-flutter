part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = CategoriesStateLoading;
  const factory CategoriesState.loaded({required List<Category> categories}) =
      CategoriesStateLoaded;
  const factory CategoriesState.error() = CategoriesStateError;
}
