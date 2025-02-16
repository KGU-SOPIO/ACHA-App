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

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _textEditingController.text.isNotEmpty;
    });
  }

  void _showTermsModal() => TermsBottomModalSheet(
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text.rich(
            TextSpan(
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 30, 30, 30)),
              children: [
                TextSpan(
                    text: '학생 인증',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(
                  text: '을 위해\n경기대학교에 로그인합니다',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.7),
                ),
              ],
            ),
          ),
          Image.asset('lib/assets/images/modal/terms/school.png', width: 60)
        ],
      ),
      uri: Uri.parse(TermsAndConditionsUri.consentToUseStudentInformation),
      termsButtonText: '개인정보 활용 동의',
      agreeButtonText: '동의하고 학생 인증',
      onAgree: () => Navigator.push(
          context, AuthProcessScreen.route(context))).show(context);

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

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
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

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 54),
            _buildTitle(),
            const SizedBox(height: 30),
            _buildPasswordField(),
          ],
        ),
        _buildButtonSection(context)
      ],
    );
  }

  Widget _buildTitle() {
    return const Text.rich(
      TextSpan(
        style: TextStyle(fontSize: 15, color: Colors.black),
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

  Widget _buildPasswordField() {
    final textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color.fromARGB(255, 237, 239, 242),
      ),
    );

    return TextFormField(
      autofocus: true,
      obscureText: true,
      controller: _textEditingController,
      decoration: InputDecoration(
        hintText: '비밀번호',
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 186, 186, 186),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 251, 251, 251),
        border: textFieldBorder,
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
      ),
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    return Column(
      children: [
        _buildNextButton(context),
        const SizedBox(height: 5),
        _buildPreviousButton(context),
      ],
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 56)),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return const Color.fromARGB(255, 199, 199, 199);
          }
          return const Color.fromARGB(255, 0, 102, 255);
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
          color: Colors.white,
        ),
      ),
    );
  }

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
          color: Color.fromARGB(255, 80, 80, 80),
        ),
      ),
    );
  }
}
