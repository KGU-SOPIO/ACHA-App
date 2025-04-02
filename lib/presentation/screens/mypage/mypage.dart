import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const MyPageScreen());
  }
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AchaColors.gray245_246_248,
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  /// 메인 위젯을 빌드합니다.
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AchaAppbar(),
          const SizedBox(height: 20),
          _buildContent(),
        ],
      ),
    );
  }

  /// 메인 컨텐츠 위젯을 빌드합니다.
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserHeader(),
          const SizedBox(height: 35),
          const AlertSettingContainer(),
          const SizedBox(height: 20),
          // const PhraseContainer(),
          // const SizedBox(height: 20),
          _buildSopioButton(),
          const SizedBox(height: 34),
          _buildLogoutButton(),
          const SizedBox(height: 18),
          _buildDeleteAccountButton(),
          const SizedBox(height: 54),
        ],
      ),
    );
  }

  /// SOPIO 버튼을 빌드합니다.
  Widget _buildSopioButton() {
    return RowContainerButton(
      padding: const EdgeInsets.symmetric(vertical: 14),
      onPressed: () => Navigator.push(context, SopioScreen.route()),
      backgroundColor: AchaColors.white,
      border: const BorderSide(color: AchaColors.gray228_232_241),
      borderRadius: 25,
      leading: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Image.asset(
          'lib/assets/images/mypage/sopio.png',
          width: 42,
        ),
      ),
      text: 'SOPIO',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AchaColors.gray30,
      ),
      widget: SvgPicture.asset('lib/assets/svgs/mypage/right_arrow.svg'),
    );
  }

  /// 로그아웃 버튼을 빌드합니다.
  Widget _buildLogoutButton() {
    return ContainerButton(
      height: 56,
      onPressed: () => LogoutModal.show(context),
      backgroundColor: AchaColors.gray237_239_242,
      text: '로그아웃',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AchaColors.gray109,
      ),
    );
  }

  /// 계정 삭제 버튼을 빌드합니다.
  Widget _buildDeleteAccountButton() {
    return ContainerButton(
      height: 56,
      onPressed: () => SignOutModal.show(context),
      backgroundColor: AchaColors.primaryRed_10,
      border: const BorderSide(color: AchaColors.primaryRed),
      text: '계정 삭제',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AchaColors.primaryRed,
      ),
    );
  }
}
