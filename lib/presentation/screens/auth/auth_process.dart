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

  static const String routeName = '/authProcess';

  static Route<void> route(BuildContext parentContext) {
    return CupertinoPageRoute(
      settings: const RouteSettings(name: routeName),
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
    final signInBloc = context.read<SignInBloc>();
    if (signInBloc.state.status == SignInStatus.inSignIn) {
      signInBloc.add(const SubmitSignIn());
    }
  }

  /// 상태에 따라 이벤트를 호출합니다.
  void _handleStatusChange(BuildContext context, SignInState state) {
    final signInBloc = context.read<SignInBloc>();

    switch (state.status) {
      case SignInStatus.inFetchUser:
        signInBloc.add(const FetchUserData());
        break;
      case SignInStatus.fetchUserSuccess:
        Navigator.push(context, AuthSignUpScreen.route(context));
        break;
      case SignInStatus.inSignUp:
        signInBloc.add(const SubmitSignUp());
        break;
      case SignInStatus.inFetchData:
        signInBloc.add(const FetchData());
        break;
      case SignInStatus.kutisPasswordError:
        Navigator.push(context, AuthChangePasswordScreen.route(context));
        break;
      case SignInStatus.signInSuccess:
        if (signInBloc.state.extract == false) {
          signInBloc.add(const FetchData());
        }
        break;
      default:
        break;
    }
  }

  /// 실패 상태를 판단하여 반환합니다.
  bool isFailureState(SignInStatus status) {
    return {
      SignInStatus.signInFailure,
      SignInStatus.fetchUserFailure,
      SignInStatus.signUpFailure,
      SignInStatus.fetchDataFailure,
    }.contains(status);
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
            listener: _handleStatusChange,
            builder: (context, state) {
              return isFailureState(state.status)
                  ? _buildErrorContent(context, state)
                  : _buildLoadingContent(state);
            },
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

  /// 오류 발생 시의 위젯을 빌드합니다.
  Widget _buildErrorContent(BuildContext context, SignInState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              SvgPicture.asset('lib/assets/svgs/auth/error.svg'),
              const SizedBox(height: 30),
              Text(
                state.status.description,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                state.errorMessage!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AchaColors.gray109,
                ),
              ),
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

  /// 로딩 위젯을 빌드합니다.
  Widget _buildLoadingContent(SignInState state) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Lottie.asset('lib/assets/lotties/auth/loading.json', width: 45),
          const SizedBox(height: 40),
          _buildStatusMessage(state.status),
          if (state.status == SignInStatus.fetchDataProgress)
            _buildExtractionInfoSection(),
        ],
      ),
    );
  }

  /// 상태 메세지 부분을 빌드합니다.
  Widget _buildStatusMessage(SignInStatus status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AchaColors.primaryBlue_10,
      ),
      child: Text(
        status.description,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AchaColors.primaryBlue,
        ),
      ),
    );
  }

  /// 데이터 추출 안내 부분을 빌드합니다.
  Widget _buildExtractionInfoSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
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
            _buildExtractionInfoText(),
            SvgPicture.asset('lib/assets/svgs/auth/download.svg'),
          ],
        ),
      ),
    );
  }

  /// 데이터 추출 안내 텍스트를 빌드합니다.
  Widget _buildExtractionInfoText() {
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
