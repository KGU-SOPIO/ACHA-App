import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';

import 'package:acha/screens/mypage/mypage_sopio.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/buttons/index.dart';
import 'package:acha/widgets/modals/index.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(
      builder: (context) => const MyPageScreen()
    );
  }
}

class _MyPageScreenState extends State<MyPageScreen> {
  void _showLogoutModal() => LogoutModal.show(context);
  void _showCancelModal() => CancelModal.show(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AchaAppbar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserHeader(),
                    const SizedBox(height: 35),
                    AlertSettingContainer(),
                    const SizedBox(height: 20),
                    PhraseContainer(),
                    const SizedBox(height: 20),
                    RowContainerButton(
                      padding: EdgeInsets.symmetric(vertical: 22),
                      onPressed: () => Navigator.push(context, SopioScreen.route()),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      border: BorderSide(
                        color: Color.fromARGB(255, 228, 232, 241)
                      ),
                      borderRadius: 25,
                      text: 'SOPIO',
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 30, 30, 30)
                      ),
                      widget: SvgPicture.asset('lib/assets/svgs/mypage/right_arrow.svg')
                    ),
                    const SizedBox(height: 34),
                    ContainerButton(
                      height: 56,
                      onPressed: () => _showLogoutModal(),
                      backgroundColor: const Color.fromARGB(255, 237, 239, 242),
                      text: '로그아웃',
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 109, 109, 109),
                      )
                    ),
                    const SizedBox(height: 18),
                    ContainerButton(
                      height: 56,
                      onPressed: () => _showCancelModal(),
                      backgroundColor: const Color.fromARGB(25, 255, 78 , 107),
                      border: BorderSide(
                        color: Color.fromARGB(255, 255, 78, 107)
                      ),
                      text: '계정 삭제',
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 255, 78, 107)
                      )
                    ),
                    const SizedBox(height: 54)
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}