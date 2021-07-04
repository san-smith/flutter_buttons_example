import 'package:flutter/material.dart';

import 'button_scale.dart';
import 'button_type.dart';
import 'theme.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.type,
    required this.scale,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final ButtonType type;
  final ButtonScale scale;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = baseButtonStyle.byType(type, blueButtonThemeData).byScale(scale);
    return TextButton(
      style: defaultStyle,
      onPressed: onPressed,
      child: child,
    );
  }
}
