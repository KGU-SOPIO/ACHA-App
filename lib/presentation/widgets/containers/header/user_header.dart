import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocConsumer<UserBloc, UserState>(
      listener: _onUserStatusChanged,
      builder: _buildContent
    );
  }

  void _onUserStatusChanged(BuildContext context, UserState state) {
    switch (state.status) {
      case UserStatus.error:
        GetIt.I<ToastManager>().error(message: state.errorMessage!);
        break;
      default:
        break;
    }
  }

  Widget _buildContent(BuildContext context, UserState state) {
    switch (state.status) {
      case UserStatus.loading:
        return const Loader(height: 63);
      case UserStatus.loaded:
        return _buildUserContainer(state);
      case UserStatus.error:
        return const SizedBox.shrink();
    }
  }

  Widget _buildUserContainer(UserState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildName(state),
        _buildAffiliation(state)
      ]
    );
  }

  Widget _buildName(UserState state) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 30, 30, 30)
        ),
        children: [
          TextSpan(
            text: state.user!.name,
            style: const TextStyle(fontWeight: FontWeight.w700)
          ),
          const TextSpan(
            text: ' 님',
            style: TextStyle(fontWeight: FontWeight.w500)
          )
        ]
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
            color: Color.fromARGB(255, 151, 151, 151)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 102, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(30)
            )
          ),
          child: Text(
            state.user!.major ?? state.user!.department!,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 255, 255, 255)
            )
          )
        )
      ]
    );
  }
}