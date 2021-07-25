import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/presentation/ui/theme.dart';

import 'presentation/home/home_screen.dart';
import 'presentation/ui/custom_button_theme_data.dart';

void main() {
  runApp(Application());
}

final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.light);

final ValueNotifier<ThemeColors> themeColorNotifier = ValueNotifier(ThemeColors.blue);

CustomButtonThemeData get buttonTheme => themeModeNotifier.value == ThemeMode.dark ? themes[themeColorNotifier.value]! : darkThemes[themeColorNotifier.value]!;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (_, mode, __) => ValueListenableBuilder(
        valueListenable: themeColorNotifier,
        builder: (_, __, ___) => MaterialApp(
          title: 'Flutter Buttons Example',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: mode,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
