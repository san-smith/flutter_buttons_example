import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/presentation/ui/custom_button_theme_data.dart';

final baseButtonStyle = TextButton.styleFrom(
  minimumSize: const Size(92, 48),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  ),
);

final lightTheme = ThemeData.light().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

final darkTheme = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const blue = Color(0xFF1BA1E2);
const teal = Color(0xFF00ABA9);
const yellow = Color(0xFFE3C800);
const green = Color(0xFF60A917);
const secondary = Color.fromRGBO(0, 28, 61, 0.05);
const white = Colors.white;
const error = Color(0xFFFF3B30);
const disabledBackground = Color(0xFF979592);
const disabledForeground = Color(0xFFD1D1D6);

const darkBlue = Color(0xFF0A84FF);
const darkTeal = Color(0xFF64D2FF);
const darkYellow = Color(0xFFFFD60A);
const darkGreen = Color(0xFF32D74B);
const darkSecondary = Color.fromRGBO(120, 120, 128, 0.32);
const darkError = Color(0xFFFF375F);
const darkDisabledBackground = Color(0xFF757575);
const darkDisabledForeground = Colors.white70;

final blueButtonThemeData = CustomButtonThemeData.fromColors(
  primary: blue,
  inverse: white,
  secondary: secondary,
  error: error,
  disabledBackground: disabledBackground,
  disabledForeground: disabledForeground,
);

final darkBlueButtonThemeData = CustomButtonThemeData.fromColors(
  primary: darkBlue,
  inverse: white,
  secondary: darkSecondary,
  error: darkError,
  disabledBackground: darkDisabledBackground,
  disabledForeground: darkDisabledForeground,
);

final tealButtonThemeData = CustomButtonThemeData.fromColors(
  primary: teal,
  inverse: white,
  secondary: secondary,
  error: error,
  disabledBackground: disabledBackground,
  disabledForeground: disabledForeground,
);

final yellowButtonThemeData = CustomButtonThemeData.fromColors(
  primary: yellow,
  inverse: white,
  secondary: secondary,
  error: error,
  disabledBackground: disabledBackground,
  disabledForeground: disabledForeground,
);

final greenButtonThemeData = CustomButtonThemeData.fromColors(
  primary: green,
  inverse: white,
  secondary: secondary,
  error: error,
  disabledBackground: disabledBackground,
  disabledForeground: disabledForeground,
);

final darkTealButtonThemeData = CustomButtonThemeData.fromColors(
  primary: darkTeal,
  inverse: white,
  secondary: darkSecondary,
  error: darkError,
  disabledBackground: darkDisabledBackground,
  disabledForeground: darkDisabledForeground,
);

final darkYellowButtonThemeData = CustomButtonThemeData.fromColors(
  primary: darkYellow,
  inverse: white,
  secondary: darkSecondary,
  error: darkError,
  disabledBackground: darkDisabledBackground,
  disabledForeground: darkDisabledForeground,
);

final darkGreenButtonThemeData = CustomButtonThemeData.fromColors(
  primary: darkGreen,
  inverse: white,
  secondary: darkSecondary,
  error: darkError,
  disabledBackground: darkDisabledBackground,
  disabledForeground: darkDisabledForeground,
);

enum ThemeColors { blue, teal, yellow, green }

final themes = {
  ThemeColors.blue: blueButtonThemeData,
  ThemeColors.teal: tealButtonThemeData,
  ThemeColors.yellow: yellowButtonThemeData,
  ThemeColors.green: greenButtonThemeData,
};

final darkThemes = {
  ThemeColors.blue: darkBlueButtonThemeData,
  ThemeColors.teal: darkTealButtonThemeData,
  ThemeColors.yellow: darkYellowButtonThemeData,
  ThemeColors.green: darkGreenButtonThemeData,
};
