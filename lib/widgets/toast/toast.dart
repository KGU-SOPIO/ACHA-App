import 'package:flutter/material.dart';

class Toast extends StatefulWidget {
  const Toast({super.key, required this.toastContainer, required this.toastDuration, required this.animationDuration});

  final Widget toastContainer;
  final Duration toastDuration;
  final Duration animationDuration;

  @override
  State<Toast> createState() => _ToastState();
}

class _ToastState extends State<Toast> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: widget.animationDuration);
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
        reverseCurve: const Interval(0.5, 1.0, curve: Curves.easeOut)
      )
    );
    _animate();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _animate() {
    _animationController.forward().whenCompleteOrCancel(() {
      Future.delayed(widget.toastDuration, () => _animationController.reverse());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: FadeTransition(
            opacity: _animation,
            child: Material(
                color: Colors.transparent,
                child: widget.toastContainer
            ),
          ),
        ),
      ),
    );
  }
}