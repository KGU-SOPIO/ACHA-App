import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class SignOutModal extends StatefulWidget {
  const SignOutModal({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      enableDrag: false,
      isDismissible: false,
      isScrollControlled: true,
      backgroundColor: AchaColors.white,
      barrierColor: AchaColors.black.withValues(alpha: 0.3),
      builder: (context) => const SignOutModal(),
    );
  }

  @override
  State<SignOutModal> createState() => _SignOutModalState();
}

class _SignOutModalState extends State<SignOutModal> {
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

  static final OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      width: 1.5,
      color: AchaColors.gray237_239_242,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignOutBloc>(
      create: (context) => SignOutBloc(
        authenticationRepository: GetIt.I<AuthenticationRepository>(),
      ),
      child: BlocListener<SignOutBloc, SignOutState>(
        listener: (context, state) {
          if (state.status == SignOutStatus.complete) {
            GetIt.I<ToastManager>().success(message: '지금까지 아차를 이용해 주셔서 감사해요');
          } else if (state.status == SignOutStatus.error) {
            Navigator.pop(context);
            GetIt.I<ToastManager>().success(message: state.errorMessage!);
          }
        },
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 40,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildHandle(),
                      const SizedBox(height: 24),
                      _buildModalBody(context),
                      const SizedBox(height: 40),
                      _buildButtons(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildHandle() {
    return IgnorePointer(
      child: Container(
        height: 6,
        width: 79,
        decoration: BoxDecoration(
          color: AchaColors.gray228_232_241,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  Widget _buildModalBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        SvgPicture.asset('lib/assets/svgs/modal/auth/cancel.svg'),
        const SizedBox(height: 20),
        const Text(
          '계정 삭제',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          '사용자 정보는 안전하게 삭제돼요',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray109,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          '비밀번호 확인',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(height: 20),
        _buildPasswordField(),
      ],
    );
  }

  Widget _buildPasswordField() {
    return BlocBuilder<SignOutBloc, SignOutState>(
      builder: (context, state) {
        final isLoading = state.status == SignOutStatus.loading;
        return TextFormField(
          autofocus: true,
          obscureText: true,
          controller: _textEditingController,
          readOnly: isLoading,
          decoration: InputDecoration(
            hintText: '비밀번호',
            hintStyle: const TextStyle(
              color: AchaColors.gray186,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: AchaColors.gray251,
            border: textFieldBorder,
            enabledBorder: textFieldBorder,
            focusedBorder: textFieldBorder,
          ),
        );
      },
    );
  }

  Widget _buildButtons(BuildContext context) {
    return BlocBuilder<SignOutBloc, SignOutState>(
      builder: (context, state) {
        final isLoading = state.status == SignOutStatus.loading;
        return Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: AchaColors.gray237_239_242,
                ),
                onPressed: isLoading ? () {} : () => Navigator.pop(context),
                child: const Text(
                  '취소',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AchaColors.gray109,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(0, 56)),
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) {
                      if (states.contains(WidgetState.disabled)) {
                        return isLoading
                            ? AchaColors.red232_165_176
                            : AchaColors.gray199;
                      }
                      return AchaColors.primaryRed;
                    },
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                onPressed: (_isButtonEnabled && !isLoading)
                    ? () {
                        FocusScope.of(context).unfocus();
                        context.read<SignOutBloc>().add(
                              SignOutEvent.submitSignOut(
                                password: _textEditingController.text,
                              ),
                            );
                      }
                    : null,
                child: Text(
                  '삭제',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: isLoading
                        ? AchaColors.red255_231_231
                        : AchaColors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
