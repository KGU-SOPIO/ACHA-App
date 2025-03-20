import 'package:flutter/material.dart';

import 'package:acha/core/constants/index.dart';

abstract class AchaBorders {
  AchaBorders._();

  static const inputFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
    borderSide: BorderSide(
      width: 1.5,
      color: AchaColors.gray237_239_242,
    ),
  );
}
