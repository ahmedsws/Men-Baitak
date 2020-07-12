import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';
import 'package:men_baitak/features/category/domain/repositories/category_repository.dart';
import 'package:men_baitak/features/category/infrastructure/repositories/category_repo_impl.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoryBloc({CategoryRepository categoryRepository})
      : categoryRepository = categoryRepository ?? CategoryRepositoryImpl(),
        super(CategoriesLoading());

  final CategoryRepository categoryRepository;

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    if (event is FetchCatgories) {
      yield CategoriesLoaded(
          categories: await categoryRepository.getFeaturedProductsCatgeories());
    }
  }
}
