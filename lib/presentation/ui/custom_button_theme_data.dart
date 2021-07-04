import 'package:flutter/material.dart';

import 'custom_button_style.dart';

class CustomButtonThemeData {
  CustomButtonThemeData({
    required this.primary,
    required this.secondary,
    required this.outlined,
    required this.error,
  });

  final CustomButtonStyle primary;
  final CustomButtonStyle secondary;
  final CustomButtonStyle outlined;
  final CustomButtonStyle error;

  factory CustomButtonThemeData.fromColors({
    required Color primary,
    required Color inverse,
    required Color secondary,
    required Color error,
  }) {
    return CustomButtonThemeData(
      primary: CustomButtonStyle(
        backgroundColor: primary,
        foregroundColor: inverse,
      ),
      secondary: CustomButtonStyle(
        backgroundColor: secondary,
        foregroundColor: primary,
      ),
      outlined: CustomButtonStyle(
        backgroundColor: Colors.transparent,
        foregroundColor: primary,
        side: BorderSide(
          color: primary,
          width: 2,
        ),
      ),
      error: CustomButtonStyle(
        backgroundColor: error,
        foregroundColor: inverse,
      ),
    );
  }
}
