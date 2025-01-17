import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/blocs/signin/index.dart';

import 'package:acha/screens/auth/auth_process.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/modals/index.dart';
import 'package:acha/widgets/buttons/index.dart';

import 'package:acha/constants/manual.dart';
import 'package:acha/constants/terms.dart';

class AuthSignUpScreen extends StatefulWidget {
  const AuthSignUpScreen({super.key});

  static Route<void> route(BuildContext context) {
    return CupertinoPageRoute(
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
    titleWidget: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 30, 30, 30)
            ),
            children: [
              TextSpan(
                text: '사용 약관에 동의',
                style: TextStyle(fontWeight: FontWeight.w700)
              ),
              TextSpan(
                text: '하고\n회원가입을 진행합니다',
                style: TextStyle(fontWeight: FontWeight.w500, height: 1.7)
              )
            ]
          )
        ),
        SvgPicture.asset('lib/assets/svgs/acha_logo.svg', width: 50)
      ],
    ),
    url: TermsAndConditionsUrl.serviceTermsAndConditions,
    termsButtonText: '아차 사용 약관',
    agreeButtonText: '동의하고 회원가입',
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
            '시작하기',
            style: TextStyle(
              fontSize: 20,
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
                              color: Color.fromARGB(255, 60, 60, 60)
                            ),
                            children: [
                              TextSpan(
                                text: '정보가 맞는지 ',
                                style: TextStyle(fontWeight: FontWeight.w700)
                              ),
                              TextSpan(
                                text: '확인해 주세요',
                                style: TextStyle(fontWeight: FontWeight.w400)
                              )
                            ]
                          )
                        )
                      ),
                      TextContainer(title: '이름', value: state.name!),
                      TextContainer(title: '대학', value: state.college!),
                      TextContainer(title: '학부', value: state.department!),
                      if (state.major != null)
                        TextContainer(title: '전공', value: state.major!),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('lib/assets/svgs/auth/question.svg'),
                            SizedBox(width: 5),
                            Text(
                              '정보가 다른가요?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 131, 131, 131)
                              )
                            )
                          ]
                        ),
                        onPressed: () => _openManualUrl()
                      ),
                      ContainerButton(
                        height: 56,
                        margin: const EdgeInsets.only(left: 24, right: 24, bottom: 30, top: 20),
                        onPressed: () => _showTermsModal(),
                        backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                        text: '다음',
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        )
                      )
                    ]
                  )
                ]
              )
            );
          }
        )
      )
    );
  }

  Future<void> _openManualUrl() async {
    Uri url = Uri.parse(ManualUrl.myInformationIsDifferent);
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      debugPrint('Could not launch url');
    }
  }
}