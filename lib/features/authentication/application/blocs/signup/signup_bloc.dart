import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/signup/signup_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/signup/signup_state.dart';
import 'package:men_baitak/features/authentication/domain/validator.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this.authBloc) : super(Initial());
  final AuthBloc authBloc;

  final nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController();

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print("$error - $stackTrace");
  }

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    final name = nameController.text,
        email = emailController.text,
        password = passwordController.text;

    if (event is SignUp) {
      if (!Validator.validateFullName(name)) {
        nameController.clear();
        yield SignUpState.signUpError('Please provide a valid full name');
        yield SignUpState.initial();
        return;
      }

      if (!Validator.validateEmail(email)) {
        emailController.clear();
        yield SignUpState.signUpError('Please provide a valid email');
        yield SignUpState.initial();
        return;
      }
      if (!Validator.validatePassword(password)) {
        passwordController.clear();
        yield SignUpState.signUpError('Please provide a valid password');
        yield SignUpState.initial();
        return;
      }

      try {
        yield SignUpState.loading();
        final result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        final uid = result.user.uid;
        final user = User(
          email: email,
          name: name,
          id: uid,
        );
        await Firestore.instance.document('users/$uid').setData(user.toJson());
        authBloc.add(AuthEvent.authenticate(user));
      } catch (e) {
        print(e);
        yield SignUpState.signUpError(
          'Email Already In-Use, Please sign in instead',
        );
        yield SignUpState.initial();
        return;
      }
    }
  }
}
