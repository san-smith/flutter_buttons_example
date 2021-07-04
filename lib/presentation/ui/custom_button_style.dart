import 'package:flutter/material.dart';

class CustomButtonStyle {
  const CustomButtonStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
    this.side,
    this.disabledSide,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;
  final BorderSide? side;
  final BorderSide? disabledSide;
}
