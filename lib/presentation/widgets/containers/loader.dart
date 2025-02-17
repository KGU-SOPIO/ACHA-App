import 'package:flutter/cupertino.dart';

class Loader extends StatelessWidget {
  const Loader({
    super.key,
    this.width = double.infinity,
    this.height = double.infinity,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: const Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
