import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.title,
    required this.message,
    this.connectionError,
  });

  final String title;
  final String message;
  final bool? connectionError;

  static Route<void> route({
    required String title,
    required String message,
    bool? connectionError,
  }) {
    return CupertinoPageRoute(
      builder: (context) => ErrorScreen(
        title: title,
        message: message,
        connectionError: connectionError,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const AchaAppbar(backgroundColor: AchaColors.white),
              _buildContent(),
              _buildButton(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// 메인 위젯을 빌드합니다.
  Widget _buildContent() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
            const SizedBox(height: 40),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              message,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AchaColors.gray109,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 버튼을 빌드합니다.
  Widget _buildButton(BuildContext context) {
    return ContainerButton(
      height: 56,
      text: '확인',
      textStyle: const TextStyle(
        color: AchaColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      backgroundColor: AchaColors.primaryBlue,
      onPressed: () {
        if (connectionError == true) {
          if (Platform.isAndroid) {
            SystemNavigator.pop();
          } else {
            exit(0);
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
