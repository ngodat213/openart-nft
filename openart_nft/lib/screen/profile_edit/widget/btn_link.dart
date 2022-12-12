import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class BtnLinkWidget extends StatelessWidget {
  const BtnLinkWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Dimens.PADDING_24,
          top: Dimens.PADDING_16,
          bottom: Dimens.PADDING_16),
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        color: AppColor.inputBg,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: Dimens.PADDING_13),
            child: Image.asset(icon),
          ),
          Text(
            title,
            style: TxtStyleMobile.txt_Medium(),
          )
        ],
      ),
    );
  }
}
