import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openart_nft/theme/dimens.dart';

class TxtStyle {
  TxtStyle._();
// Display Regular
  static TextStyle h1 = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_40,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h2 = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h3 = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w400,
  );
// Display Bold
  static TextStyle h1b = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_40,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h2b = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_32,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h3b = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_24,
    fontWeight: FontWeight.w400,
  );

// TEXT
  static TextStyle txt_Large = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Medium = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_Small = GoogleFonts.quicksand(
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle txt_XSmall = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_13,
    fontWeight: FontWeight.w500,
  );

// LINK
  static TextStyle link_Large = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle link_Medium = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_DEFAULT,
    fontWeight: FontWeight.w700,
  );
  static TextStyle link_Small = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle link_XSmall = GoogleFonts.epilogue(
    fontSize: Dimens.FONT_SIZE_13,
    fontWeight: FontWeight.w700,
  );
}