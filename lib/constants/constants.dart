import 'package:flutter/material.dart';

const backColor = Color(0xFF21043E);
const backSecondary = Color(0xFF492469);
const backThird = Color(0xFF754899);
const textColor = Color(0xFFA7C4C3);
const button1Color = Color(0xFF1A92D2);
const button2Color = Color(0xFFAE3370);
const button3Color = Color(0xFF5B29C9);

TextStyle get gettextColor => TextStyle(
      fontSize: 37,
      fontWeight: FontWeight.bold,
      foreground: Paint()
        ..shader = const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors,
        ).createShader(
          const Rect.fromLTWH(0, 0, 400, 100),
        ),
    );

const backGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [backColor, backSecondary, backThird],
);

const gradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: colors,
);
const colors = [
  Color(0xFFAE3370),
  Color(0xFF913A84),
  Color(0xFF1A92D2),
];
