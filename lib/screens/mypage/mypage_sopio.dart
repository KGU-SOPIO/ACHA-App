import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/widgets/containers/index.dart';

class SopioScreen extends StatelessWidget {
  const SopioScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const SopioScreen(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: SvgPicture.asset('lib/assets/svgs/mypage/back_arrow.svg')
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 35),
                    Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.w400
                      )
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'SOPIO',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                      )
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Software of Public Interest Organization'.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      )
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '소프트웨어 기술을 활용하여 일상의 불편함을 해소하고, 누구나 쉽게 이용할 수 있는 편리한 서비스를 제공하는 것을 목표로 합니다.'.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        height: 2
                      )
                    ),
                    const SizedBox(height: 50),
                    MemberContainer(name: '홍준서', part: '앱', department: 'AI컴퓨터공학부', github: '@JunseoKR'),
                    const SizedBox(height: 21),
                    MemberContainer(name: '최수인', part: '웹', department: 'AI컴퓨터공학부', github: '@sooinice'),
                    const SizedBox(height: 21),
                    MemberContainer(name: '이한음', part: '서버', department: 'AI컴퓨터공학부', github: '@LeeHanEum'),
                    const SizedBox(height: 21),
                    MemberContainer(name: '권우진', part: '서버', department: 'AI컴퓨터공학부', github: '@kwj0175'),
                    const SizedBox(height: 21),
                    MemberContainer(name: '서민혁', part: '디자인', department: 'AI컴퓨터공학부', github: '@SOPIO'),
                    const SizedBox(height: 40)
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