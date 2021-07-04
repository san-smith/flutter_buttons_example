import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
