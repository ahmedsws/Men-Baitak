part of 'category_bloc.dart';

@immutable
abstract class CategoriesState {
  const CategoriesState({this.categories = const []});
  final List<Category> categories;
}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  const CategoriesLoaded({List<Category> categories})
      : super(categories: categories);
}
