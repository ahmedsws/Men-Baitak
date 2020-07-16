import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:men_baitak/core/presentation/widgets/snackbar.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_state.dart';
import 'package:men_baitak/features/authentication/presentation/login_page/widgets/login_form.dart';
import 'package:men_baitak/features/authentication/presentation/login_page/widgets/login_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage();

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => LoginBloc(BlocProvider.of<AuthBloc>(context)),
        child: LoginScreen(
            title: 'Login',
            body: BlocListener<LoginBloc, LoginState>(
              listener: (_, state) {
                if (state is LoginError) {
                  Snackbar.showError(context, state.error);
                }
              },
              child: LoginForm(),
            )),
      );
}
