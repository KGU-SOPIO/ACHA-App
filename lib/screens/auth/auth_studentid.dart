import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/blocs/signin/index.dart';

import 'package:acha/screens/auth/index.dart';

class AuthStudentIdScreen extends StatefulWidget {
  const AuthStudentIdScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const AuthStudentIdScreen()
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
    _authenticationRepository = GetIt.I<AuthenticationRepository>();
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _textEditingController.clear();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _authenticationRepository.disposeSignInStream();
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
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
          child: BlocProvider<SignInBloc>(
            create: (context) => SignInBloc(authenticationRepository: _authenticationRepository),
            child: Builder(
              builder: (context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 60, 60, 60)
                          ),
                          children: [
                            TextSpan(
                                text: '학번을 ',
                                style: TextStyle(fontWeight: FontWeight.w700)
                            ),
                            TextSpan(
                              text: '입력해 주세요',
                              style: TextStyle(fontWeight: FontWeight.w400)
                            )
                          ]
                        )
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        maxLength: 9,
                        autofocus: true,
                        focusNode: _focusNode,
                        controller: _textEditingController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: '학번',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 186, 186, 186),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                          counterText: '',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 251, 251, 251),
                          border: textFieldBorder,
                          enabledBorder: textFieldBorder,
                          focusedBorder: textFieldBorder
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                        onChanged: (value) {
                          if (value.length == 9) {
                            context.read<SignInBloc>().add(SignInStudentIdEntered(value));
                            Navigator.push(context, AuthPasswordScreen.route(context));
                          }
                        }
                      )
                    ]
                  )
                );
              }
            )
          )
        )
      )
    );
  }
}