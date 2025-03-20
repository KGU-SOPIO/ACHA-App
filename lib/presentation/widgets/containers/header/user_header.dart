import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class UserHeader extends StatefulWidget {
  const UserHeader({super.key});

  @override
  State<UserHeader> createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: _buildContent,
    );
  }

  Widget _buildContent(BuildContext context, UserState state) {
    switch (state.status) {
      case UserStatus.loading:
        return const Loader(height: 63);
      case UserStatus.loaded:
        return _buildUser(state);
      case UserStatus.error:
        return _buildError();
    }
  }

  Widget _buildUser(UserState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildName(state),
        _buildAffiliation(state),
      ],
    );
  }

  Widget _buildName(UserState state) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 24,
          color: AchaColors.gray30,
        ),
        children: [
          TextSpan(
            text: state.user!.name,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          const TextSpan(
            text: ' 님',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAffiliation(UserState state) {
    return Row(
      children: [
        Text(
          state.user!.college,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray151,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: const BoxDecoration(
            color: AchaColors.primaryBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Text(
            state.user!.affiliation!,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AchaColors.gray255,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildError() {
    return const SizedBox(
      width: double.infinity,
      height: 70,
      child: Center(
        child: Text(
          '사용자 정보를 불러오지 못했어요',
          style: TextStyle(
            fontSize: 15,
            color: AchaColors.gray109,
          ),
        ),
      ),
    );
  }
}
