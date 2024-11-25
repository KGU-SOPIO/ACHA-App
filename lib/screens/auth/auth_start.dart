import 'package:flutter/material.dart';

import 'package:acha/screens/auth/auth_studentid.dart';

class AuthStartScreen extends StatelessWidget {
  const AuthStartScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (context) => const AuthStartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("아차!"),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 40, left: 24, right: 24),
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context, AuthStudentIdScreen.route()),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 0, 102, 255)
                  ),
                  child: const Text(
                    "시작하기",
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
          ),
        )
      ),
    );
  }
}
