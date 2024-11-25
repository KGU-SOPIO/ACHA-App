import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

import 'package:acha/screens/auth/auth_process.dart';

import 'package:acha/widgets/container/text_container.dart';
import 'package:acha/widgets/modal/terms_modal.dart';

import 'package:acha/constants/manual.dart';
import 'package:acha/constants/terms.dart';

class AuthSignUpScreen extends StatefulWidget {
  const AuthSignUpScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const AuthSignUpScreen()
    );
  }

  @override
  State<AuthSignUpScreen> createState() => _AuthSignUpScreenState();
}

class _AuthSignUpScreenState extends State<AuthSignUpScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollOrNavigate() {
    if (_scrollController.offset < _scrollController.position.maxScrollExtent) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
      );
    } else {
      _showTermsModal();
    }
  }

  void _showTermsModal() {
    TermsBottomModalSheet(
      modalTitle: "사용 약관에 동의해주세요.",
      termsTitle: "아차 사용 약관",
      url: TermsAndConditionsUrl.serviceTermsAndConditions,
      buttonText: "동의하고 회원가입",
      onAgree: () => Navigator.push(context, AuthProcessScreen.route(context.read<SignInBloc>()))
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                          child: const Text(
                            "학생 정보를 불러왔어요."
                          ),
                        ),
                        TextContainer(title: "이름", value: state.name),
                        TextContainer(title: "대학", value: state.college),
                        TextContainer(title: "학부", value: state.department),
                        TextContainer(title: "전공", value: state.major)
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      IgnorePointer(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: isDarkMode ? [
                                    const Color.fromARGB(255, 43, 43, 43).withOpacity(0.0),
                                    const Color.fromARGB(255, 43, 43, 43).withOpacity(1.0)
                                  ] : [
                                    Colors.white.withOpacity(0.0),
                                    Colors.white.withOpacity(1.0)
                                  ]
                                )
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 115,
                              color: isDarkMode ? const Color.fromARGB(255, 43, 43, 43) : Colors.white,
                            )
                          ],
                        )
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            child: const Text(
                              "정보를 수정하고 싶어요."
                            ),
                            onPressed: () => _openManualUrl(),
                          ),
                          Container(
                            height: 54,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(bottom: 20, left: 22, right: 22),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blueAccent,
                              ),
                              onPressed: () {
                                _scrollOrNavigate();
                              },
                              child: const Text(
                                "다음"
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _openManualUrl() async {
    Uri url = Uri.parse(ManualUrl.howToModifyMyInformation);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint("Could not launch url");
    }
  }
}
