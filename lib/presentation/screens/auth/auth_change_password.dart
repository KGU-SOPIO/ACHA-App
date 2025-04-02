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

class AuthChangePasswordScreen extends StatefulWidget {
  const AuthChangePasswordScreen({super.key});

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(parentContext),
        child: const AuthChangePasswordScreen(),
      ),
    );
  }

  @override
  State<AuthChangePasswordScreen> createState() =>
      _AuthChangePasswordScreenState();
}

class _AuthChangePasswordScreenState extends State<AuthChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AchaAppbar(backgroundColor: AchaColors.white),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildContent(),
                      _buildButtonSection(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 메인 위젯을 빌드합니다.
  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            _buildHeader(),
            const SizedBox(height: 30),
            _buildManual(),
          ],
        ),
      ],
    );
  }

  /// 헤더 위젯을 빌드합니다.
  Widget _buildHeader() {
    return Column(
      children: [
        SvgPicture.asset('lib/assets/svgs/auth/wait.svg'),
        const SizedBox(height: 17),
        const Text(
          '잠시만요!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(height: 17),
        const Text(
          'KUTIS 비밀번호를 변경해 주세요',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray60,
          ),
        ),
      ],
    );
  }

  /// 매뉴얼 위젯을 빌드합니다.
  Widget _buildManual() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AchaColors.blue228_232_241,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          _buildManualHeader(),
          const SizedBox(height: 20),
          _buildManualInfo(),
          const SizedBox(height: 20),
          _buildManualButton(),
        ],
      ),
    );
  }

  /// 매뉴얼 헤더 위젯을 빌드합니다.
  Widget _buildManualHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AchaColors.gray245_246_248,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AchaColors.gray109,
                ),
                children: [
                  TextSpan(
                    text: '비밀번호',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: '를 왜 바꿔야 하나요?')
                ],
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset('lib/assets/svgs/auth/password.svg'),
          ],
        ),
      ),
    );
  }

  /// 매뉴얼 설명 위젯을 빌드합니다.
  Widget _buildManualInfo() {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AchaColors.gray125,
                    ),
                    children: [
                      TextSpan(text: 'KUTIS에서 '),
                      TextSpan(
                        text: '오류',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          height: 1.7,
                        ),
                      ),
                      TextSpan(text: '가 발생해'),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset('lib/assets/svgs/auth/sad.svg'),
              ],
            ),
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AchaColors.gray125,
                ),
                children: [
                  TextSpan(
                    text: '정보를 불러올 수 없는 상태',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      height: 1.8,
                    ),
                  ),
                  TextSpan(text: '예요'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SvgPicture.asset('lib/assets/svgs/auth/next.svg'),
        const SizedBox(height: 15),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AchaColors.gray125,
            ),
            children: [
              TextSpan(
                text: '비밀번호 변경 후 재시도',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AchaColors.primaryBlue,
                ),
              ),
              TextSpan(text: '해 주세요'),
            ],
          ),
        ),
      ],
    );
  }

  /// 매뉴얼 버튼을 빌드합니다.
  Widget _buildManualButton() {
    return RowContainerButton(
      height: 56,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: () => _openUri(
        link: AchaUris.changePasswordManual,
        errorMessage: '매뉴얼 페이지를 열지 못했어요',
      ),
      backgroundColor: AchaColors.white,
      border: const BorderSide(
        color: AchaColors.blue228_232_241,
      ),
      borderRadius: 40,
      text: '매뉴얼 확인하기',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AchaColors.blue120_136_178,
      ),
      widget: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SvgPicture.asset('lib/assets/svgs/auth/first.svg'),
      ),
      reverse: true,
    );
  }

  /// 버튼 부분 위젯을 빌드합니다.
  Widget _buildButtonSection(BuildContext context) {
    return Column(
      children: [
        _buildKutisButton(),
        const SizedBox(height: 12),
        _buildRetryButton(),
        const SizedBox(height: 20),
      ],
    );
  }

  /// KUTIS 실행 버튼을 빌드합니다.
  Widget _buildKutisButton() {
    return RowContainerButton(
      height: 56,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: () => _openUri(
        link: AchaUris.kutisLogin,
        errorMessage: 'KUTIS를 열지 못했어요',
      ),
      backgroundColor: AchaColors.primaryBlue,
      borderRadius: 12,
      textWidget: const Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AchaColors.white,
          ),
          children: [
            TextSpan(
              text: '쿠티스',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            TextSpan(text: '로 이동')
          ],
        ),
      ),
      widget: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SvgPicture.asset('lib/assets/svgs/auth/second.svg'),
      ),
      reverse: true,
    );
  }

  /// 재시도 버튼을 빌드합니다.
  Widget _buildRetryButton() {
    return RowContainerButton(
      height: 56,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: () {
        context.read<SignInBloc>().add(const SignInEvent.changeSignInStatus(
              status: SignInStatus.inSignIn,
            ));
        Navigator.pushAndRemoveUntil(
          context,
          AuthStudentIdScreen.route(),
          (route) => false,
        );
      },
      backgroundColor: AchaColors.blue245_246_248,
      borderRadius: 12,
      text: '재시도',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AchaColors.blue120_136_178,
      ),
      widget: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SvgPicture.asset('lib/assets/svgs/auth/third.svg'),
      ),
      reverse: true,
    );
  }

  /// URI를 실행합니다.
  Future<void> _openUri({
    required String link,
    required String errorMessage,
  }) async {
    try {
      final uri = Uri.parse(link);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: errorMessage);
    }
  }
}
