import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

import 'package:acha/screens/auth/auth_process.dart';

import 'package:acha/widgets/container/authentication/text_container.dart';
import 'package:acha/widgets/modal/terms_modal.dart';

import 'package:acha/constants/manual.dart';
import 'package:acha/constants/terms.dart';

class AuthSignUpScreen extends StatefulWidget {
  const AuthSignUpScreen({super.key});

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(context),
        child: const AuthSignUpScreen(),
      )
    );
  }

  @override
  State<AuthSignUpScreen> createState() => _AuthSignUpScreenState();
}

class _AuthSignUpScreenState extends State<AuthSignUpScreen> {
  void _showTermsModal() => TermsBottomModalSheet(
    modalTitle: "사용 약관에 동의해주세요.",
    termsTitle: "아차 사용 약관",
    url: TermsAndConditionsUrl.serviceTermsAndConditions,
    buttonText: "동의하고 회원가입",
    onAgree: () => Navigator.push(context, AuthProcessScreen.route(context))
  ).show(context);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            "시작하기",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w500
            ),
          )
        ),
        body: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(24),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Pretendard",
                              color: Color.fromARGB(255, 60, 60, 60)
                            ),
                            children: [
                              TextSpan(
                                text: "정보가 맞는지 ",
                                style: TextStyle(fontWeight: FontWeight.w700)
                              ),
                              TextSpan(
                                text: "확인해 주세요",
                                style: TextStyle(fontWeight: FontWeight.w400)
                              )
                            ]
                          ),
                        )
                      ),
                      TextContainer(title: "이름", value: state.name),
                      TextContainer(title: "대학", value: state.college),
                      TextContainer(title: "학부", value: state.department),
                      TextContainer(title: "전공", value: state.major),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("lib/assets/svgs/auth/information.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "정보가 다른가요?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Pretendard",
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 131, 131, 131)
                                ),
                              ),
                            )
                          ],
                        ),
                        onPressed: () => _openManualUrl()
                      ),
                      Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(left: 24, right: 24, bottom: 30, top: 24),
                        child: ElevatedButton(
                          onPressed: () {
                            _showTermsModal();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(255, 0, 102, 255)
                          ),
                          child: const Text(
                            "다음",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0.3,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w700
                            )
                          )
                        ),
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
    Uri url = Uri.parse(ManualUrl.myInformationIsDifferent);
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      debugPrint("Could not launch url");
    }
  }
}