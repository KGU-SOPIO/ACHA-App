import 'package:acha/screens/auth/auth_signup.dart';
import 'package:acha/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

class AuthProcessScreen extends StatefulWidget {
  const AuthProcessScreen({super.key});

  static Route<void> route(SignInBloc signInBloc) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: signInBloc,
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
                return const Placeholder();
              } else {
                return const Text("Status");
              }
            },
          ),
        ),
      ),
    );
  }
}
