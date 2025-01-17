import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/signin/index.dart';

import 'package:acha/screens/auth/index.dart';
import 'package:acha/widgets/modals/index.dart';

import 'package:acha/constants/terms.dart';

class AuthPasswordScreen extends StatefulWidget {
  const AuthPasswordScreen({super.key});

  static Route<void> route(BuildContext context) {
    return CupertinoPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<SignInBloc>(context),
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
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 30, 30, 30)
              ),
              children: [
                TextSpan(
                  text: '학생 인증',
                  style: TextStyle(fontWeight: FontWeight.w700)
                ),
                TextSpan(
                  text: '을 위해\n경기대학교에 로그인합니다',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.7)
                )
              ]
            )
          ),
          Image.asset('lib/assets/images/modal/terms/school.png', width: 60)
        ]
      ),
      url: TermsAndConditionsUrl.consentToUseStudentInformation,
      termsButtonText: '개인정보 활용 동의',
      agreeButtonText: '동의하고 학생 인증',
      onAgree: () => Navigator.push(context, AuthProcessScreen.route(context))
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 1.5,
        color: Color.fromARGB(255, 237, 239, 242),
      )
    );

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            '시작하기',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          )
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                text: '비밀번호를 ',
                                style: TextStyle(fontWeight: FontWeight.w700)
                              ),
                              TextSpan(
                                text: '입력해 주세요',
                                style: TextStyle(fontWeight: FontWeight.w400)
                              )
                            ]
                          )
                        )
                      ),
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          hintText: '비밀번호',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 186, 186, 186),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 251, 251, 251),
                          border: textFieldBorder,
                          enabledBorder: textFieldBorder,
                          focusedBorder: textFieldBorder
                        )
                      )
                    ]
                  )
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(double.infinity, 56)),
                        backgroundColor: WidgetStateProperty.resolveWith(
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
                      onPressed: _isButtonEnabled ? () {
                        context.read<SignInBloc>().add(PasswordEntered(password: _textEditingController.text));
                        _showTermsModal();
                      } : null,
                      child: const Text(
                        '다음',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        )
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: TextButton(
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all(Size(double.infinity, 56))
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          '이전',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 80, 80, 80)
                          )
                        )
                      )
                    )
                  ]
                )
              ]
            )
          )
        )
      )
    );
  }
}