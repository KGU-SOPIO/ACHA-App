import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/auth/authentication_bloc.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key, required this.bottomMargin});

  final double bottomMargin;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state.status == AuthenticationStatus.authenticated) {
          final User user = state.user!;
          return Container(
            margin: EdgeInsets.only(bottom: bottomMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 30, 30, 30)
                    ),
                    children: [
                      TextSpan(
                        text: user.name,
                        style: TextStyle(fontWeight: FontWeight.w700)
                      ),
                      TextSpan(
                        text: " 님",
                        style: TextStyle(fontWeight: FontWeight.w500)
                      )
                    ]
                  ),
                ),
                Row(
                  children: [
                    Text(
                      user.college,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 151, 151, 151)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 102, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        )
                      ),
                      child: Text(
                        user.major,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}