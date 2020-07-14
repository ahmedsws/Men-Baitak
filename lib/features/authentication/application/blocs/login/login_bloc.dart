import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_state.dart';
import 'package:men_baitak/features/authentication/domain/validator.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.authBloc) : super(Initial());

  final AuthBloc authBloc;
  final emailController = TextEditingController(),
      passwordController = TextEditingController();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    final email = emailController.text, password = passwordController.text;
    if (!Validator.validateEmail(email)) {
      emailController.clear();
      yield LoginState.loginError('Please provide your email');
      yield LoginState.initial();
      return;
    }
    if (!Validator.validatePassword(password)) {
      passwordController.clear();
      yield LoginState.loginError('Please provide your password');
      yield LoginState.initial();
      return;
    }
    final error =
        LoginState.loginError('Please check your email and/or password');
    yield LoginState.loading();
    try {
      final result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final uid = result.user.uid;
      final doc = await Firestore.instance.document('users/$uid').get();
      if (!doc.exists) {
        await FirebaseAuth.instance.signOut();
        yield error;
      }
      authBloc.add(Authenticate(User.fromJson({
        'id': uid,
        ...doc.data,
      })));
    } catch (e) {
      print(e);
      yield error;
    }
  }
}
