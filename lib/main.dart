import 'package:flutter/material.dart';

import 'presentation/home/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buttons Example',
      home: HomeScreen(),
    );
  }
}
