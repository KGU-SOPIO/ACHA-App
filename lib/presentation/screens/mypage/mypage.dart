import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';

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
  void _showLogoutModal() => LogoutModal.show(context);
  void _showCancelModal() => CancelModal.show(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

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
          const PhraseContainer(),
          const SizedBox(height: 20),
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

  Widget _buildSopioButton() {
    return RowContainerButton(
      padding: const EdgeInsets.symmetric(vertical: 22),
      onPressed: () => Navigator.push(context, SopioScreen.route()),
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      border: const BorderSide(color: Color.fromARGB(255, 228, 232, 241)),
      borderRadius: 25,
      text: 'SOPIO',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 30, 30, 30),
      ),
      widget: SvgPicture.asset('lib/assets/svgs/mypage/right_arrow.svg'),
    );
  }

  Widget _buildLogoutButton() {
    return ContainerButton(
      height: 56,
      onPressed: () => _showLogoutModal(),
      backgroundColor: const Color.fromARGB(255, 237, 239, 242),
      text: '로그아웃',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 109, 109, 109),
      ),
    );
  }

  Widget _buildDeleteAccountButton() {
    return ContainerButton(
      height: 56,
      onPressed: () => _showCancelModal(),
      backgroundColor: const Color.fromARGB(25, 255, 78, 107),
      border: const BorderSide(color: Color.fromARGB(255, 255, 78, 107)),
      text: '계정 삭제',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 255, 78, 107),
      ),
    );
  }
}
