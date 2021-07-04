import 'package:flutter/material.dart';

enum ButtonScale { small, medium, large }

extension ButtonStyleByScale on ButtonStyle {
  ButtonStyle byScale(ButtonScale scale) {
    switch (scale) {
      case ButtonScale.small:
        return copyWith(minimumSize: MaterialStateProperty.all(const Size(75, 30)));
      case ButtonScale.medium:
        return copyWith(minimumSize: MaterialStateProperty.all(const Size(78, 36)));
      case ButtonScale.large:
        return copyWith(
          minimumSize: MaterialStateProperty.all(const Size(88, 44)),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
        );
    }
  }
}
