import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.title,
    this.top,
    this.border,
    this.color,
    this.boxShadow,
  }) : super(key: key);
  final String title;
  final BoxBorder? border;
  final Color? color;
  final double? top;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        top: top ?? 0,
        right: Dimens.PADDING_19,
      ),
      padding: EdgeInsets.only(left: Dimens.PADDING_10),
      height: Dimens.HEIGHT_56,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: new BorderRadius.circular(5.0),
        boxShadow: boxShadow,
        border: border,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
          ),
          hintText: title,
          hintStyle: TxtStyleDesktop.txt_XSmall,
        ),
      ),
    );
  }
}
