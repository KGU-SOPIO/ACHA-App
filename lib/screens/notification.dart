import 'package:flutter/material.dart';

import 'package:acha/widgets/container/appbar/acha_appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const NotificationScreen()
    );
  }
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AchaAppbar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 245, 246, 248),
        ),
      ),
    );
  }
}