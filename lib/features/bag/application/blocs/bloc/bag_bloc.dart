import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_event.dart';
import 'package:men_baitak/features/bag/application/blocs/bloc/bag_state.dart';
import 'package:men_baitak/features/bag/domain/repositories/bag_repository.dart';
import 'package:men_baitak/features/bag/infrastructure/repositories/bag_repository_impl.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_state.dart';

class BagBloc extends Bloc<BagEvent, BagState> {
  BagBloc({BagRepository bagRepository, this.authBloc})
      : bagRepository = bagRepository ?? BagRepositoryImpl(),
        super(BagLoading());

  BagRepository bagRepository;
  AuthBloc authBloc;
  @override
  Stream<BagState> mapEventToState(BagEvent event) async* {
    yield* event.when(
        addToBag: (bagItem) async* {
          if (authBloc.state is! Authenticated) return;
          final user = (authBloc.state as Authenticated).user;
          yield BagItemAdded(bagItem);
          bagRepository.addToBag(bagItem, user);
        },
        deleteFromBag: (bagItem) async* {},
        getBagItems: () async* {
          if (authBloc.state is! Authenticated) return;
          final user = (authBloc.state as Authenticated).user;

          yield BagItemsLoaded(await bagRepository.getBagItems(user));
        });
  }
}
