import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/txt_style.dart';

class NoneAvatarUserWidget extends StatelessWidget {
  const NoneAvatarUserWidget({
    Key? key,
    this.margin,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.symmetric(
        vertical: Dimens.PADDING_6,
        horizontal: Dimens.PADDING_6,
      ),
      width: Dimens.HEIGHT_150,
      decoration: BoxDecoration(
        color: AppColor.offWhite,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_51),
        boxShadow: [
          BoxShadow(
            color: AppColor.placeholder.withOpacity(0.5),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: Dimens.HEIGHT_40,
            width: Dimens.HEIGHT_40,
            margin: EdgeInsets.only(right: Dimens.PADDING_10),
            decoration: BoxDecoration(
              gradient: AppColor.gradientSecondary,
              borderRadius: BorderRadius.circular(52),
            ),
            child: Text(
              textAlign: TextAlign.center,
              'H',
              style: TxtStyleDesktop.h3b,
            ),
          ),
          Text(
            '@openart',
            style: TxtStyleDesktop.link_XSmall,
          )
        ],
      ),
    );
  }
}
