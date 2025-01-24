import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:acha/widgets/containers/index.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(
      builder: (context) => const SplashScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Loader())
    );
  }
}