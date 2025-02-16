import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/presentation/widgets/index.dart';

class SopioScreen extends StatelessWidget {
  const SopioScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const SopioScreen());
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
              _buildBackButton(context),
              _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset('lib/assets/svgs/mypage/back_arrow.svg'),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 35),
          _buildDescription(),
          const SizedBox(height: 30),
          _buildTeamTitle(),
          const SizedBox(height: 30),
          _buildMemberList(),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('About',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 102, 255))),
        const SizedBox(height: 8),
        const Text('SOPIO',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 30, 30, 30))),
        const SizedBox(height: 20),
        Text(
          "'Software of Public Interest Organization'\n2023년에 2인으로 시작하여 현재는 5인으로 구성된 소프트웨어 개발팀입니다."
              .replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
          style: const TextStyle(
            height: 2,
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 60, 60, 60),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          '공익과 사용자 중심의 가치를 추구하며, 기술을 통해 일상의 불편함을 해소하고, 누구나 쉽게 접근할 수 있는 유용한 솔루션를 제공하는 것을 목표로 합니다.'
              .replaceAllMapped(RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
          style: const TextStyle(
            height: 2,
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 60, 60, 60),
          ),
        ),
        const SizedBox(height: 30),
        Text.rich(
          TextSpan(
            style: const TextStyle(
              height: 2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 60, 60, 60),
            ),
            children: [
              TextSpan(
                text: '첫 번째 프로젝트로 스마트한 학습 관리 서비스 '.replaceAllMapped(
                    RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
              ),
              TextSpan(
                text: "'아차'".replaceAllMapped(
                    RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
              ),
              TextSpan(
                text: '를 선보입니다.'.replaceAllMapped(
                    RegExp(r'(\S)(?=\S)'), (m) => '${m[1]}\u200D'),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTeamTitle() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('lib/assets/svgs/mypage/sopio/team.svg'),
          const SizedBox(width: 8),
          const Text(
            '개발팀',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 30, 30, 30),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMemberList() {
    return const Column(
      children: [
        MemberContainer(
            name: '홍준서', part: '앱', department: 'AI컴퓨터공학부', github: 'JunseoKR'),
        SizedBox(height: 21),
        MemberContainer(
            name: '최수인', part: '웹', department: 'AI컴퓨터공학부', github: 'sooinice'),
        SizedBox(height: 21),
        MemberContainer(
            name: '이한음',
            part: '서버',
            department: 'AI컴퓨터공학부',
            github: 'LeeHanEum'),
        SizedBox(height: 21),
        MemberContainer(
            name: '권우진', part: '서버', department: 'AI컴퓨터공학부', github: 'kwj0175'),
        SizedBox(height: 21),
        MemberContainer(
            name: '서민혁',
            part: '디자인',
            department: 'AI컴퓨터공학부',
            github: 'Seominhyeok05'),
        SizedBox(height: 40)
      ],
    );
  }
}
