import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AuthProcessScreen extends StatefulWidget {
  const AuthProcessScreen({super.key});

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<SignInBloc>(parentContext),
        child: const AuthProcessScreen(),
      ),
    );
  }

  @override
  State<AuthProcessScreen> createState() => _AuthProcessScreenState();
}

class _AuthProcessScreenState extends State<AuthProcessScreen> {
  @override
  void initState() {
    super.initState();
    if (context.read<SignInBloc>().state.status == SignInStatus.initial) {
      context.read<SignInBloc>().add(const SubmitSignIn());
    } else if (context.read<SignInBloc>().state.status ==
        SignInStatus.inSignUp) {
      context.read<SignInBloc>().add(const SubmitSignUp());
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SafeArea(
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) {
              if (state.status == SignInStatus.inFetchUser) {
                context.read<SignInBloc>().add(const FetchUserData());
              } else if (state.status == SignInStatus.inSignUp) {
                Navigator.push(context, AuthSignUpScreen.route(context));
              } else if (state.status == SignInStatus.inFetchData) {
                context.read<SignInBloc>().add(const FetchData());
              }
            },
            builder: (context, state) {
              if (state.status == SignInStatus.signInFailure ||
                  state.status == SignInStatus.fetchUserFailure ||
                  state.status == SignInStatus.signUpFailure ||
                  state.status == SignInStatus.fetchDataFailure) {
                return _buildErrorContent(context, state);
              } else {
                return _buildLoadingContent(state);
              }
            },
          ),
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

  Widget _buildErrorContent(BuildContext context, SignInState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
              const SizedBox(height: 30),
              Text(
                state.status.description,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                state.errorMessage!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AchaColors.gray109,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
          Column(
            children: [
              ContainerButton(
                height: 56,
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  AuthStudentIdScreen.route(),
                  (route) => false,
                ),
                backgroundColor: AchaColors.primaryBlue,
                text: '돌아가기',
                textStyle: const TextStyle(
                  color: AchaColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingContent(SignInState state) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 42),
          Lottie.asset('lib/assets/lotties/auth/loading.json', width: 45),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AchaColors.primaryBlue_10),
            child: Text(
              state.status.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AchaColors.primaryBlue,
              ),
            ),
          ),
          if (state.status == SignInStatus.fetchDataProgress) ...[
            const SizedBox(height: 32),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AchaColors.gray245_246_248,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildExtractionInfoPanel(),
                  SvgPicture.asset('lib/assets/svgs/auth/download.svg'),
                ],
              ),
            )
          ],
        ],
      ),
    );
  }

  Widget _buildExtractionInfoPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset('lib/assets/svgs/auth/information.svg'),
            const SizedBox(width: 5),
            const Text(
              'Notice',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AchaColors.gray109,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          '데이터를 가져오고 있어요',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AchaColors.gray109,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '시간이 조금 걸릴 수 있어요',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray151,
          ),
        )
      ],
    );
  }
}
