import 'package:acha/constants/terms.dart';
import 'package:acha/screens/auth/auth_process.dart';
import 'package:acha/widgets/modal/terms_modal.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

class AuthPasswordScreen extends StatefulWidget {
  const AuthPasswordScreen({super.key});

  static Route<void> route(SignInBloc signInBloc) {
    return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: signInBloc,
          child: const AuthPasswordScreen(),
        )
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

  void _showTermsModal() {
    TermsBottomModalSheet(
      modalTitle: "학생 인증을 위해\n경기대학교에 로그인합니다.",
      termsTitle: "개인정보 활용 동의",
      url: TermsAndConditionsUrl.consentToUseStudentInformation,
      buttonText: "동의하고 학생 인증",
      onAgree: () => Navigator.push(context, AuthProcessScreen.route(context.read<SignInBloc>()))
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 237, 239, 242),
      )
    );

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "시작하기"
          )
        ),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "비밀번호를 입력해 주세요.",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w700
                          )
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        controller: _textEditingController,
                        decoration: InputDecoration(
                            hintText: "비밀번호",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 186, 186, 186),
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w400
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 251, 251, 251),
                            border: textFieldBorder,
                            enabledBorder: textFieldBorder,
                            focusedBorder: textFieldBorder
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: _isButtonEnabled ? () {
                                context.read<SignInBloc>().add(SignInPasswordEntered(_textEditingController.text));
                                _showTermsModal();
                              } : null,
                              style: ButtonStyle(
                                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                                      (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.disabled)) {
                                      bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
                                      return isDarkMode ? const Color.fromARGB(255, 100, 100, 100) : const Color.fromARGB(255, 199, 199, 199);
                                    }
                                    return const Color.fromARGB(255, 0, 102, 255);
                                  },
                                ),
                                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                ),
                              ),
                              child: const Text(
                                "다음",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.3,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            )
                        ),
                        SizedBox(
                          height: 56,
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              "이전",
                              style: TextStyle(
                                color: Color.fromARGB(255, 80, 80, 80),
                                fontSize: 14,
                                letterSpacing: 0.3,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}