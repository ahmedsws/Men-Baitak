import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_state.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Account Page"),
              state is Authenticated
                  ? RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        text: "Logout here",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => BlocProvider.of<AuthBloc>(context)
                              .add(Unauthenticate()),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
