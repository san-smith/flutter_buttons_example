import 'package:flutter/material.dart';

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
