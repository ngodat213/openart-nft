import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

// Grayscale
  static const titleActive = Color(0xff222222);
  static const body = Color(0xff333333);
  static const label = Color(0xff555555);
  static const placeholder = Color(0xff888888);
  static const line = Color(0xffDCDCDC);
  static const inputBg = Color(0xffF0F0F0);
  static const bgColor = Color(0xffF8F8F8);
  static const offWhite = Color(0xffFCFCFC);
  static const white = Color(0xffFFFFFF);

// Colors

  static const primaryColor =
      LinearGradient(colors: [Color(0xff0000EA), Color(0xff005CFF)]);
  static const secondaryColor =
      LinearGradient(colors: [Color(0xffFF9700), Color(0xffFFE604)]);
  static const errorColor =
      LinearGradient(colors: [Color(0xffFD0025), Color(0xffFF7E86)]);
  static const successColor =
      LinearGradient(colors: [Color(0xff02971C), Color(0xff36EA88)]);
  static const warningColor =
      LinearGradient(colors: [Color(0xff0000EA), Color(0xff005CFF)]);
  static const gradientPrimary =
      LinearGradient(colors: [Color(0xff0000C5), Color(0xff0046FF)]);
  static const gradientSecondary =
      LinearGradient(colors: [Color(0xffFF8200), Color(0xffFFFF02)]);
  static const gradientAccent =
      LinearGradient(colors: [Color(0xff0000F6), Color(0xff9041FF)]);
}
