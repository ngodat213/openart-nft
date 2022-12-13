import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class BtnTotalWalletWidget extends StatelessWidget {
  const BtnTotalWalletWidget({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 32,
      padding: EdgeInsets.symmetric(
          vertical: Dimens.PADDING_13, horizontal: Dimens.PADDING_10),
      decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_24)),
      child: Row(children: [
        Container(
          width: Dimens.HEIGHT_77,
          height: Dimens.HEIGHT_77,
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: Dimens.PADDING_20),
          decoration: BoxDecoration(
              color: AppColor.line,
              borderRadius: BorderRadius.circular(Dimens.RADIUS_20),
              image: DecorationImage(image: AssetImage(AppImage.icon_plus))),
        ),
        Text(title, style: TxtStyleMobile.link_Large2)
      ]),
    );
  }
}
