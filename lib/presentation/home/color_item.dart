import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/main.dart';
import 'package:flutter_buttons_example/presentation/ui/theme.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final ThemeColors value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<ThemeColors>(
          value: value,
          groupValue: themeColorNotifier.value,
          onChanged: (value) {
            if (value != null) {
              themeColorNotifier.value = value;
            }
          },
        ),
        SizedBox(width: 10),
        Text(title),
      ],
    );
  }
}
