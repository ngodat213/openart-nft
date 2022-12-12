import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.title,
    this.top,
  }) : super(key: key);
  final String title;
  final double? top;
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
        color: Colors.white,
        borderRadius: new BorderRadius.circular(5.0),
        boxShadow: [AppColor.boxShadow],
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
