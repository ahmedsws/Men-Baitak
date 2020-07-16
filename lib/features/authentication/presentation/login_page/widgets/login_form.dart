import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/core/presentation/widgets/login_button.dart';
import 'package:men_baitak/core/presentation/widgets/login_field.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/login/login_state.dart';
import 'file:///C:/Users/alibo/AndroidStudioProjects/menbaitak/lib/features/authentication/presentation/signup_page/signup_page.dart';

class LoginForm extends StatelessWidget {
  const LoginForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final Color accentColor = Theme.of(context).accentColor;
        final loginBloc = BlocProvider.of<LoginBloc>(context);

        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
//                IconButton(
//                    icon: Icon(Icons.arrow_back),
//                    color: accentColor,
//                    onPressed: () => Navigator.of(context).pop()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Center(
                    child: Text(
                      'Welcome to MenBaitak',
                      style: TextStyle(fontSize: 26, color: accentColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                  child: Text(
                    'Log back into your Account',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                LoginField(
                  controller: loginBloc.emailController,
                  hint: 'Email',
                ),
                LoginField(
                  controller: loginBloc.passwordController,
                  hint: 'Password',
                  obscure: true,
                ),
                if (state is Loading)
                  Center(
                    child: CircularProgressIndicator(),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(
                      child: LoginButton(
                        'Sign in',
                        onPressed: () =>
                            loginBloc.add(LoginEvent.loginWithEmail()),
                      ),
                    ),
                  ),
//                Padding(
//                  padding: const EdgeInsets.only(top: 20),
//                  child: Center(
//                    child: Text(
//                      '..Or sign in with..',
//                      style: GoogleFonts.poppins(
//                        fontSize: 15,
//                        color: Theme.of(context).accentColor,
//                      ),
//                    ),
//                  ),
//                ),
//                if (state is! Loading)
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            text: "Don't have an account? ",
                          ),
                          TextSpan(
                            style: GoogleFonts.poppins(
                              color: accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            text: 'Sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// Text("Don't have an account? Sign up"),
