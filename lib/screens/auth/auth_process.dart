import 'package:acha/screens/auth/auth_studentid.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

import 'package:acha/screens/auth/auth_signup.dart';
import 'package:acha/screens/home.dart';

class AuthProcessScreen extends StatefulWidget {
  const AuthProcessScreen({super.key});

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(context),
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
          title: const Text(
            "시작하기",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w500
            ),
          )
        ),
        body: SafeArea(
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              if (state.status == SignInStatus.inSignUp) {
                Navigator.push(context, AuthSignUpScreen.route());
              } else if (state.status == SignInStatus.signInSuccess) {
                Navigator.pushAndRemoveUntil(context, HomeScreen.route(), (route) => false);
              }
            },
            builder: (context, state) {
              if (state.status == SignInStatus.signInFailure || state.status == SignInStatus.signUpFailure) {
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: SvgPicture.asset("lib/assets/svgs/signin/signin_error.svg"),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "문제 발생",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Text(
                            "인증에 문제가 발생했어요",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 109, 109, 109)
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(bottom: 30, left: 24, right: 24),
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushAndRemoveUntil(context, AuthStudentIdScreen.route(), (route) => false),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 0, 102, 255)
                        ),
                        child: const Text(
                          "돌아가기",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 0.3,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    )
                  ],
                );
              } else if (state.status == SignInStatus.signInProgress || state.status == SignInStatus.signUpProgress) {
                return Placeholder();
              } else {
                return Placeholder();
              }
            },
          ),
        ),
      ),
    );
  }
}