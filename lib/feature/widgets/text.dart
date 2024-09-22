import 'package:flutter/material.dart';

class AppText {
  static Text regular({
    required String text,
    Color? color,
    double? fontSize,
    String? fontFamily,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign,
    );
  }

  static Text bold({
    required String text,
    Color? color,
    double? fontSize,
    String? fontFamily,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign,
    );
  }

  // 他のテキストスタイルも必要に応じて追加できます
}
