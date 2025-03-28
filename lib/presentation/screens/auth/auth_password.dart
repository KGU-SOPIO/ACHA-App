import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AuthPasswordScreen extends StatefulWidget {
  const AuthPasswordScreen({super.key});

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(parentContext),
        child: const AuthPasswordScreen(),
      ),
    );
  }

  @override
  State<AuthPasswordScreen> createState() => _AuthPasswordScreenState();
}

class _AuthPasswordScreenState extends State<AuthPasswordScreen> {
  late final TextEditingController _textEditingController;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_updateButtonState);
    _textEditingController.dispose();
    super.dispose();
  }

  /// 버튼 활성화 상태를 업데이트합니다.
  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _textEditingController.text.isNotEmpty;
    });
  }

  /// 약관 모달 위젯을 빌드합니다.
  void _showTermsModal() {
    return TermsModal(
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
                  text: '학생 인증',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: '을 위해\n경기대학교에 로그인합니다',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('lib/assets/images/modal/terms/school.png', width: 60)
        ],
      ),
      uri: Uri.parse(AchaUris.privacyTerms),
      termsButtonText: '개인정보 수집·이용 동의',
      agreeButtonText: '동의하고 학생 인증',
      onAgree: () => Navigator.push(
        context,
        AuthProcessScreen.route(context),
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }

  /// 상단 앱바를 빌드합니다.
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

  /// 메인 위젯을 빌드합니다.
  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 70),
            _buildTitle(),
            const SizedBox(height: 30),
            _buildPasswordField(),
          ],
        ),
        _buildButtonSection(context)
      ],
    );
  }

  /// 입력 필드의 제목을 빌드합니다.
  Widget _buildTitle() {
    return const Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: 15,
          color: AchaColors.gray60,
        ),
        children: [
          TextSpan(
            text: '비밀번호를 ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: '입력해 주세요',
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  /// 비밀번호 입력 필드를 빌드합니다.
  Widget _buildPasswordField() {
    return TextFormField(
      autofocus: true,
      obscureText: true,
      controller: _textEditingController,
      decoration: const InputDecoration(
        hintText: '비밀번호',
        hintStyle: TextStyle(
          color: AchaColors.gray186,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: AchaColors.gray251,
        border: AchaBorders.inputFieldBorder,
        enabledBorder: AchaBorders.inputFieldBorder,
        focusedBorder: AchaBorders.inputFieldBorder,
      ),
    );
  }

  /// 버튼 부분 위젯을 빌드합니다.
  Widget _buildButtonSection(BuildContext context) {
    return Column(
      children: [
        _buildNextButton(context),
        const SizedBox(height: 5),
        _buildPreviousButton(context),
      ],
    );
  }

  /// 다음 버튼을 빌드합니다.
  Widget _buildNextButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 56)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return AchaColors.gray199;
            }
            return AchaColors.primaryBlue;
          },
        ),
      ),
      onPressed: _isButtonEnabled
          ? () {
              context
                  .read<SignInBloc>()
                  .add(InputPassword(password: _textEditingController.text));
              _showTermsModal();
            }
          : null,
      child: const Text(
        '다음',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AchaColors.white,
        ),
      ),
    );
  }

  /// 이전 버튼을 빌드합니다.
  Widget _buildPreviousButton(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 56)),
      ),
      onPressed: () => Navigator.pop(context),
      child: const Text(
        '이전',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AchaColors.gray80,
        ),
      ),
    );
  }
}
