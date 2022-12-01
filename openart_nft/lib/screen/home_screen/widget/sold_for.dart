import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class SoldForWidget extends StatelessWidget {
  const SoldForWidget({
    Key? key,
    required this.size,
    required this.eth,
  }) : super(key: key);
  final String eth;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 32,
      height: Dimens.HEIGHT_64,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.offWhite,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Sold For ', style: TxtStyleMobile.txt_Large),
            TextSpan(text: eth + ' ETH', style: TxtStyleMobile.h3b)
          ],
        ),
      ),
    );
  }
}
