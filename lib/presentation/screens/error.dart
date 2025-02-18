import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.title,
    required this.message,
    this.connectionError,
  });

  static Route<void> route({
    required String title,
    required String message,
    bool? connectionError,
  }) =>
      CupertinoPageRoute(
        builder: (context) => ErrorScreen(
          title: title,
          message: message,
          connectionError: connectionError,
        ),
      );

  final String title;
  final String message;
  final bool? connectionError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const AchaAppbar(backgroundColor: Colors.white),
              _buildContent(),
              _buildButton(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
            const SizedBox(height: 30),
            const Text(
              '인터넷 연결 문제',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '인터넷 연결 확인 후 앱을 재실행해 주세요',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 109, 109, 109),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return ContainerButton(
      height: 56,
      text: '확인',
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 102, 255),
      onPressed: () {
        if (connectionError == true) {
          if (Platform.isAndroid) {
            SystemNavigator.pop();
          } else {
            GetIt.I<ToastManager>().error(message: '인터넷 연결 확인 후 앱을 재실행해 주세요');
          }
        } else {
          Navigator.pushAndRemoveUntil(
            context,
            AuthStudentIdScreen.route(),
            (route) => false,
          );
        }
      },
    );
  }
}
