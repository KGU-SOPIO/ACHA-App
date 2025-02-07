import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/buttons/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class ConnectErrorScreen extends StatelessWidget {
  const ConnectErrorScreen({super.key});

  static Route<void> route() => CupertinoPageRoute(builder: (context) => const ConnectErrorScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const AchaAppbar(backgroundColor: Colors.white),
              _buildError(),
              ContainerButton(
                height: 56,
                text: '확인',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
                backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else {
                    GetIt.I<ToastManager>().error(message: '앱을 재실행해 주세요');
                  }
                }
              ),
              const SizedBox(height: 20)
            ]
          )
        )
      )
    );
  }

  Widget _buildError() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
            const SizedBox(height: 30),
            Text(
              '인터넷 연결 문제',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              )
            ),
            const SizedBox(height: 20),
            Text(
              '인터넷 연결 확인 후 앱을 재실행해 주세요',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 109, 109, 109)
              )
            )
          ]
        )
      )
    );
  }
}