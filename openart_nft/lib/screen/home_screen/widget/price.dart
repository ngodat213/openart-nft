import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.eth,
    required this.usd,
  }) : super(key: key);
  final double eth;
  final double usd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimens.PADDING_16,
        top: Dimens.PADDING_20,
        bottom: Dimens.PADDING_16,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Reserve Price ',
              style: TxtStyleMobile.txt_Medium,
            ),
            TextSpan(
              text: eth.toString() + ' ETH ',
              style: TxtStyleMobile.h3b,
            ),
            TextSpan(
              text: '\$' + usd.toString(),
              style: TxtStyleMobile.link_Small,
            ),
          ],
        ),
      ),
    );
  }
}
