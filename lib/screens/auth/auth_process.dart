import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'package:acha/blocs/signin/index.dart';

import 'package:acha/screens/auth/index.dart';

import 'package:acha/widgets/buttons/index.dart';

class AuthProcessScreen extends StatefulWidget {
  const AuthProcessScreen({super.key});

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      builder: (_) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(parentContext),
        child: const AuthProcessScreen(),
      )
    );
  }

  @override
  State<AuthProcessScreen> createState() => _AuthProcessScreenState();
}

class _AuthProcessScreenState extends State<AuthProcessScreen> {
  @override
  void initState() {
    super.initState();
    if (context.read<SignInBloc>().state.status == SignInStatus.initial) {
      context.read<SignInBloc>().add(const SignInSubmitted());
    } else if (context.read<SignInBloc>().state.status == SignInStatus.inSignUp) {
      context.read<SignInBloc>().add(const SignUpSubmitted());
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            '시작하기',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            )
          )
        ),
        body: SafeArea(
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              if (state.status == SignInStatus.inSignUp) {
                Navigator.push(context, AuthSignUpScreen.route(context));
              }
            },
            builder: (context, state) {
              if (state.status == SignInStatus.signInFailure || state.status == SignInStatus.signUpFailure) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
                            SizedBox(height: 30),
                            Text(
                              state.status.description,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              )
                            ),
                            SizedBox(height: 20),
                            Text(
                              state.errorMessage!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 109, 109, 109)
                              )
                            )
                          ]
                        )
                      ),
                      ContainerButton(
                        height: 56,
                        margin: const EdgeInsets.only(bottom: 20),
                        onPressed: () => Navigator.pushAndRemoveUntil(context, AuthStudentIdScreen.route(), (route) => false),
                        backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                        text: '돌아가기',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        )
                      )
                    ]
                  )
                );
              } else {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 42),
                      Lottie.asset(
                        'lib/assets/lotties/auth/loading.json',
                        width: 45
                      ),
                      SizedBox(height: 24),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(25, 0, 102, 255)
                        ),
                        child: Text(
                          state.status.description,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 102, 255)
                          )
                        )
                      )
                    ]
                  )
                );
              }
            }
          )
        )
      )
    );
  }
}