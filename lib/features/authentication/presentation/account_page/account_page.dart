import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_bloc.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_event.dart';
import 'package:men_baitak/features/authentication/application/blocs/auth/auth_state.dart';

import 'list_item.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) =>
          LayoutBuilder(builder: (context, constrains) {
        final height = constrains.biggest.height,
            width = constrains.biggest.width;

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            state is Authenticated
                ? Column(children: [
                    Container(
                      width: width,
                      height: height * .4,
                      color: Theme.of(context).accentColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=adult-beard-boy-casual-220453.jpg&fm=jpg'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ali Aljahawi",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "aliahmed@gmail.com",
                            style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * .6,
                      child: ListView(children: [
                        ListItem(Icons.account_circle, "Edit Profile"),
                        ListItem(Icons.notifications, "Notifications"),
                        ListItem(Icons.format_list_bulleted, "Orders"),
                        ListItem(Icons.share, "Invite Friends"),
                        ListItem(Icons.question_answer,
                            "Frequently Asked Questions"),
                        ListItem(Icons.info, "About Us"),
                      ]),
                    ),
                  ])
                : SizedBox(),
          ],
        );
      }),
    );
  }
}
