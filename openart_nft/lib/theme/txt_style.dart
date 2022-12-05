import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openart_nft/theme/colors.dart';
import 'package:openart_nft/theme/dimens.dart';

class TxtStyleMobile {
  TxtStyleMobile._();
// Display Regular
  static TextStyle h1 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_40,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h2 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h3 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w400,
  );
// Display Bold
  static TextStyle h1b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_40,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h2b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h3b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w700,
  );

// TEXT
  static TextStyle txt_Large = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Medium({Color color = AppColor.body}) {
    return GoogleFonts.epilogue(
      color: AppColor.body,
      fontSize: Dimens.FONT_SIZE_DEFAULT,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle txt_Small = GoogleFonts.quicksand(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Small2 = GoogleFonts.quicksand(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_13,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static TextStyle txt_Small1 = GoogleFonts.quicksand(
    color: AppColor.inputBg,
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_XSmall = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_13,
    fontWeight: FontWeight.w500,
  );

// LINK
  static TextStyle link_Large1 = GoogleFonts.epilogue(
    color: AppColor.offWhite,
    fontSize: Dimens.FONT_SIZE_20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle link_Large2 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle link_Medium = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w700,
  );

  static TextStyle link_Medium1 = GoogleFonts.epilogue(
    color: AppColor.bgColor,
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w400,
  );

  static TextStyle link_Small = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle link_XSmall = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_13,
    fontWeight: FontWeight.w700,
  );
}

class TxtStyleDesktop {
  TxtStyleDesktop._();
// Display Regular
  static TextStyle h1 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_64,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h2 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_48,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h3 = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w400,
  );
// Display Bold
  static TextStyle h1b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_64,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h2b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_48,
    fontWeight: FontWeight.w700,
  );

  static TextStyle h3b = GoogleFonts.epilogue(
    color: AppColor.titleActive,
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w700,
  );

// TEXT
  static TextStyle txt_Large = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Medium = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_18,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Small = GoogleFonts.quicksand(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_XSmall = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w500,
  );

// LINK
  static TextStyle link_Large = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w700,
  );

  static TextStyle link_Medium = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle link_Small = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w700,
  );
  static TextStyle link_XSmall = GoogleFonts.epilogue(
    color: AppColor.body,
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w700,
  );
}
