import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._();

  static String fontFamilyInter = 'Inter';
  static String fontFamilyInterMedium = 'Inter-Medium';
  static String fontFamilyInterBold = 'Inter-Bold';
  static String fontFamilyInterSemiBold = 'Inter-SemiBold';
  static String fontFamilyInterLight = 'Inter-Light';
  static String fontFamilyInterRegular = 'Inter-Regular';

  static LinearGradient backgroundLineerGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.5, .9],
      colors: [Color(0xFFFEE3C8), Color(0XFFFBD4B9)]);

  static Color textColor = const Color(0xFF313341);
}
