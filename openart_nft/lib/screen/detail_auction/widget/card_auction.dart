import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';
import '../../../widget/btn_raised_gradient.dart';

class CardAuctionWidget extends StatelessWidget {
  const CardAuctionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        margin: EdgeInsets.only(top: Dimens.PADDING_38),
        decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
          boxShadow: [AppColor.boxShadow],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.PADDING_20, vertical: Dimens.PADDING_20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reserve Price', style: TxtStyleMobile.txt_Large),
                  SizedBox(height: Dimens.HEIGHT_4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: '1.50 ETH ', style: TxtStyleMobile.h3b),
                        TextSpan(
                            text: '\$2,683.73',
                            style: TxtStyleMobile.link_Medium)
                      ],
                    ),
                  ),
                  SizedBox(height: Dimens.HEIGHT_16),
                  Text(
                    'Once a bid has been placed and the reserve price has been met, a 24 hour auction for this artwork will begin.',
                    style: TxtStyleMobile.txt_Medium(color: AppColor.label),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimens.HEIGHT_16),
            RaisedGradientButton(
              size: size,
              child: Text(
                'Place a bid',
                style: TxtStyleMobile.txt_Medium(color: AppColor.offWhite),
              ),
              height: Dimens.HEIGHT_40,
              width: size.width - 40,
              borderRadius: Dimens.RADIUS_8,
              onPressed: () {},
            ),
            SizedBox(height: Dimens.HEIGHT_38),
          ],
        ),
      ),
    );
  }
}
