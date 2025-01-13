import 'package:flutter/material.dart';

import 'package:acha/screens/auth/index.dart';

import 'package:acha/widgets/buttons/index.dart';

class AuthStartScreen extends StatelessWidget {
  const AuthStartScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const AuthStartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('아차!'),
              ContainerButton(
                height: 56,
                onPressed: () => Navigator.push(context, AuthStudentIdScreen.route()),
                backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                text: '지금 시작하기',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                )
              )
            ]
          )
        )
      )
    );
  }
}