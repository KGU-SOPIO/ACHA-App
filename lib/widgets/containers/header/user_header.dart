import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/user/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class UserHeader extends StatefulWidget {
  const UserHeader({super.key});

  @override
  State<UserHeader> createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status == UserStatus.error) {
          GetIt.I<ToastManager>().error(message: state.errorMessage!);
        }
      },
      builder: (context, state) {
        if (state.status == UserStatus.loading) {
          return Loader(height: 63);
        } else if (state.status == UserStatus.loaded) {
          return Column(
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
                      text: state.user!.name,
                      style: TextStyle(fontWeight: FontWeight.w700)
                    ),
                    TextSpan(
                      text: ' 님',
                      style: TextStyle(fontWeight: FontWeight.w500)
                    )
                  ]
                ),
              ),
              Row(
                children: [
                  Text(
                    state.user!.college,
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
                      state.user!.major,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 255, 255)
                      )
                    )
                  )
                ]
              )
            ]
          );
        } else {
          return const SizedBox.shrink();
        }
      }
    );
  }
}