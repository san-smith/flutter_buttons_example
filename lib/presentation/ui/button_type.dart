import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/presentation/ui/custom_button_style.dart';

import 'custom_button_theme_data.dart';

enum ButtonType { primary, secondary, outlined, error }

extension ButtonStyleByType on ButtonStyle {
  ButtonStyle byType(ButtonType type, CustomButtonThemeData data) {
    switch (type) {
      case ButtonType.primary:
        return _copyWithCustom(data.primary);
      case ButtonType.secondary:
        return _copyWithCustom(data.secondary);
      case ButtonType.outlined:
        return _copyWithCustom(data.outlined);
      case ButtonType.error:
        return _copyWithCustom(data.error);
    }
  }

  ButtonStyle _copyWithCustom(CustomButtonStyle style) {
    return copyWith(
      backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledBackgroundColor : style.backgroundColor),
      foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledForegroundColor : style.foregroundColor),
      side: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledSide : style.side),
    );
  }
}
