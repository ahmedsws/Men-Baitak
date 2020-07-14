import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_state.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(LoadingApp());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(startApp: () async* {
      final currentUser = await FirebaseAuth.instance.currentUser();
      if (currentUser == null) {
        yield Unauthenticated();
        return;
      }
      final uid = currentUser.uid;
      final doc = await Firestore.instance.document('users/$uid').get();
      if (!doc.exists) {
        await FirebaseAuth.instance.signOut();
        yield Unauthenticated();
        return;
      }
      final user = User.fromJson({...doc.data, 'id': uid});
      yield Authenticated(user);
    }, authenticate: (user) async* {
      yield Authenticated(user);
    }, unauthenticate: () async* {
      yield Unauthenticated();
      await FirebaseAuth.instance.signOut();
    });
  }
}
