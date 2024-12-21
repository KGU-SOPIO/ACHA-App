import 'package:flutter/material.dart';

import 'package:acha/screens/auth/auth_studentid.dart';

class AuthStartScreen extends StatelessWidget {
  const AuthStartScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const AuthStartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("아차!"),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 102, 255)
                  ),
                  onPressed: () => Navigator.push(context, AuthStudentIdScreen.route()),
                  child: const Text(
                    "시작하기",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w700
                    )
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}