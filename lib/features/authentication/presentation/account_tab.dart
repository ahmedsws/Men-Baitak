import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_state.dart';
import 'package:men_baitak/features/authentication/presentation/login_page.dart';

import 'account_page.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback(
              (_) => Navigator.of(context).popUntil((route) => route.isFirst));
          return state.maybeWhen(
              authenticated: (user) => AccountPage(),
              orElse: () => LoginPage());
        },
      );
}
