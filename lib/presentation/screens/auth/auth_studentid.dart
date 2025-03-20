import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';

class AuthStudentIdScreen extends StatefulWidget {
  const AuthStudentIdScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(
      builder: (context) => const AuthStudentIdScreen(),
    );
  }

  @override
  State<AuthStudentIdScreen> createState() => _AuthStudentIdScreenState();
}

class _AuthStudentIdScreenState extends State<AuthStudentIdScreen> {
  late final FocusNode _focusNode;
  late final TextEditingController _textEditingController;
  late final AuthenticationRepository _authenticationRepository;

  @override
  void initState() {
    super.initState();
    _authenticationRepository = GetIt.I<AuthenticationRepository>();
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _textEditingController.clear();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: BlocProvider(
          create: (context) => SignInBloc(
            authenticationRepository: _authenticationRepository,
          ),
          child: Scaffold(
            appBar: _buildAppBar(),
            body: _buildBody(context),
          ),
        ));
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
  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 70),
                _buildTitle(),
                const SizedBox(height: 30),
                _buildStudentIdField(context),
              ],
            ),
          );
        },
      ),
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
            text: '학번을 ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: '입력해 주세요',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  /// 학번 입력 필드를 빌드합니다.
  Widget _buildStudentIdField(BuildContext context) {
    return TextFormField(
      maxLength: 9,
      autofocus: true,
      focusNode: _focusNode,
      controller: _textEditingController,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(
        hintText: '학번',
        hintStyle: TextStyle(
          color: AchaColors.gray186,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        counterText: '',
        filled: true,
        fillColor: AchaColors.gray251,
        border: AchaBorders.inputFieldBorder,
        enabledBorder: AchaBorders.inputFieldBorder,
        focusedBorder: AchaBorders.inputFieldBorder,
      ),
      style: const TextStyle(
        color: AchaColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      onChanged: (value) {
        if (value.length >= 9) {
          context.read<SignInBloc>().add(InputStudentId(studentId: value));
          Navigator.push(context, AuthPasswordScreen.route(context));
        }
      },
    );
  }
}
