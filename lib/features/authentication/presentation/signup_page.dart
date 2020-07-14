import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/core/presentation/widgets/login_button.dart';
import 'package:men_baitak/core/presentation/widgets/login_field.dart';
import 'package:men_baitak/core/presentation/widgets/snackbar.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/signup/signup_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/signup/signup_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/signup/signup_state.dart';
import 'package:men_baitak/features/authentication/presentation/widgets/company_icon.dart';

import 'login_screen.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color accentColor = Theme.of(context).accentColor;
    final signupBloc = SignUpBloc(BlocProvider.of<AuthBloc>(context));
    return BlocProvider(
      create: (_) => signupBloc,
      child: LoginScreen(
        title: 'Register',
        body: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is SignUpError) Snackbar.showError(context, state.error);
          },
          buildWhen: (previous, current) => current is! SignUpError,
          listenWhen: (previous, current) => current is SignUpError,
          builder: (context, state) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Navigator.of(context).canPop()
                        ? IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: accentColor,
                            onPressed: () => Navigator.of(context).pop())
                        : SizedBox(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      child: Center(
                        child: Text(
                          'Create account',
                          style: TextStyle(fontSize: 26, color: accentColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 14),
                      child: Text(
                        'Sign up and start shopping',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    LoginField(
                      controller: signupBloc.nameController,
                      hint: 'Name',
                    ),
                    LoginField(
                      controller: signupBloc.emailController,
                      hint: 'Email',
                    ),
                    LoginField(
                      controller: signupBloc.passwordController,
                      hint: 'Password',
                      obscure: true,
                    ),
                    if (state is Loading)
                      Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: LoginButton(
                            'Sign up',
                            onPressed: () => signupBloc.add(SignUp()),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Center(
                        child: Text(
                          '.. Or sign up with ..',
                          style: GoogleFonts.poppins(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CompanyIcon(
                            icon: FontAwesomeIcons.google,
                            onPressed: () {},
                          ),
                          CompanyIcon(
                            icon: FontAwesomeIcons.facebookF,
                            onPressed: () {},
                          ),
                          CompanyIcon(
                            icon: FontAwesomeIcons.twitter,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
