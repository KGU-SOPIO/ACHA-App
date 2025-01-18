import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      Text(
                        'SOPIO',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 2
                        )
                      ),
                      SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 2,
                            color: Colors.black
                          ),
                          children: [
                            TextSpan(
                              text: '\'Software of Public Interest Organization\'\n\n'.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(text: '소프트웨어 기술을 활용하여 일상의 불편함을 해소하고, 누구나 쉽게 이용할 수 있는 편리한 서비스를 제공하는 것을 목표로 합니다.'.replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D')),
                          ]
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: 50),
                MemberContainer(name: '홍준서', part: '앱', department: 'AI컴퓨터공학부', sns: '@JunseoKR'),
                SizedBox(height: 21),
                MemberContainer(name: '최수인', part: '웹', department: 'AI컴퓨터공학부', sns: '@sooinice'),
                SizedBox(height: 21),
                MemberContainer(name: '이한음', part: '서버', department: 'AI컴퓨터공학부', sns: '@LeeHanEum'),
                SizedBox(height: 21),
                MemberContainer(name: '권우진', part: '서버', department: 'AI컴퓨터공학부', sns: '@kwj0175'),
                SizedBox(height: 21),
                MemberContainer(name: '서민혁', part: '디자인', department: 'AI컴퓨터공학부', sns: '@SOPIO'),
                SizedBox(height: 30)
              ]
            )
          )
        )
      )
    );
  }
}