import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AuthSignUpScreen extends StatefulWidget {
  const AuthSignUpScreen({super.key});

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(parentContext),
        child: const AuthSignUpScreen(),
      ),
    );
  }

  @override
  State<AuthSignUpScreen> createState() => _AuthSignUpScreenState();
}

class _AuthSignUpScreenState extends State<AuthSignUpScreen> {
  void _showTermsModal() => TermsModal(
        titleWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: AchaColors.gray30,
                ),
                children: [
                  TextSpan(
                    text: '이용 약관에 동의',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: '하고\n회원가입을 진행합니다',
                    style: TextStyle(fontWeight: FontWeight.w500, height: 1.7),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('lib/assets/svgs/acha/small.svg', width: 50)
          ],
        ),
        uri: Uri.parse(AchaUris.serviceTerms),
        termsButtonText: '아차 이용 약관',
        agreeButtonText: '동의하고 회원가입',
        onAgree: () => Navigator.push(
          context,
          AuthProcessScreen.route(context),
        ),
      ).show(context);

  Future<void> _openManualUri() async {
    try {
      final uri = Uri.parse(AchaUris.differentManual);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: '매뉴얼 페이지를 열지 못했어요');
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: BlocBuilder<SignInBloc, SignInState>(
          builder: _buildBody,
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AchaColors.white,
      centerTitle: true,
      title: const Text(
        '시작하기',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, SignInState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildUserInformationSection(state),
            _buildButtonSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInformationSection(SignInState state) {
    return Column(
      children: [
        const SizedBox(height: 24),
        _buildTitle(),
        const SizedBox(height: 30),
        TextContainer(title: '이름', value: state.user!.name),
        const SizedBox(height: 24),
        TextContainer(title: '대학', value: state.user!.college),
        const SizedBox(height: 24),
        if (state.user!.department != null)
          TextContainer(title: '학부', value: state.user!.department!),
        const SizedBox(height: 24),
        if (state.user!.major != null)
          TextContainer(title: '전공', value: state.user!.major!),
      ],
    );
  }

  Widget _buildTitle() {
    return const SizedBox(
      width: double.infinity,
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 15,
            color: AchaColors.gray60,
          ),
          children: [
            TextSpan(
              text: '정보가 맞는지 ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: '확인해 주세요',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildManualButton(),
        const SizedBox(height: 20),
        _buildNextButton(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildManualButton() {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () => _openManualUri(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('lib/assets/svgs/auth/question.svg'),
          const SizedBox(width: 5),
          const Text(
            '정보가 다른가요?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AchaColors.gray131,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildNextButton() {
    return ContainerButton(
      height: 56,
      onPressed: () => _showTermsModal(),
      backgroundColor: AchaColors.primaryBlue,
      text: '다음',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AchaColors.white,
      ),
    );
  }
}
