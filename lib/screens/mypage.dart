import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_svg/svg.dart';

import 'package:acha/repository/authentication.dart';

import 'package:acha/widgets/container/user_header.dart';
import 'package:acha/widgets/container/appbar/acha_appbar.dart';
import 'package:acha/widgets/container/mypage/alert_setting_container.dart';
import 'package:acha/widgets/container/mypage/phrase_container.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const MyPageScreen()
    );
  }
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: AchaAppbar()
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserHeader(bottomMargin: 35),
                    AlertSettingContainer(),
                    PhraseContainer(),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 34),
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 228, 232, 241)
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SOPIO",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 30, 30, 30)
                            ),
                          ),
                          SvgPicture.asset("lib/assets/svgs/mypage/right_arrow.svg")
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18),
                      child: ElevatedButton(
                        onPressed: () {
                          GetIt.I<AuthenticationRepository>().logout();
                          GetIt.I<ToastManager>().show(message: "정상적으로 로그아웃 되었어요", svgPath: "lib/assets/svgs/toast/logout.svg");
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          foregroundColor: const Color.fromARGB(255, 109, 109, 109),
                          backgroundColor: const Color.fromARGB(255, 237, 239, 242)
                        ),
                        child: Text(
                          "로그아웃",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 56,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 54),
                      child: OutlinedButton(
                        onPressed: () {
                          GetIt.I<AuthenticationRepository>().logout();
                          GetIt.I<ToastManager>().success(message: "서비스를 탈퇴했어요");
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          side: BorderSide(
                            color: Color.fromARGB(255, 255, 78, 107)
                          ),
                          elevation: 0,
                          foregroundColor: Color.fromARGB(255, 255, 78, 107),
                          backgroundColor: Color.fromARGB(25, 255, 78 , 107),
                        ),
                        child: Text(
                          "탈퇴",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w700
                          )
                        )
                      )
                    )
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