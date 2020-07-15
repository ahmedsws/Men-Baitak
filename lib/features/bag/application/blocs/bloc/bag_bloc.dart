import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_event.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_state.dart';
import 'package:men_baitak/features/bag/domain/repositories/bag_repository.dart';
import 'package:men_baitak/features/bag/infrastructure/repositories/bag_repository_impl.dart';

class BagBloc extends Bloc<BagEvent, BagState> {
  BagBloc({BagRepository bagRepository})
      : bagRepository = bagRepository ?? BagRepositoryImpl(),
        super(BagLoading());

  BagRepository bagRepository;
  @override
  Stream<BagState> mapEventToState(BagEvent event) async* {
    yield* event.when(
        addToBag: (bagItem) async* {},
        deleteFromBag: (bagItem) async* {},
        getBagItems: () async* {});
  }
}
