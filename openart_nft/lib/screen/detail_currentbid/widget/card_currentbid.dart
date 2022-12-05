import 'package:flutter/material.dart';
import 'package:openart_nft/screen/detail_currentbid/widget/row_time.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';
import '../../../widget/btn_raised_gradient.dart';

class CurrentBidWidget extends StatelessWidget {
  const CurrentBidWidget({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimens.PADDING_20, vertical: Dimens.PADDING_20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Bid', style: TxtStyleMobile.txt_Large),
                  SizedBox(height: Dimens.HEIGHT_4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: '0.50 ETH ', style: TxtStyleMobile.h3b),
                        TextSpan(
                            text: '\$2,683.73',
                            style: TxtStyleMobile.link_Medium)
                      ],
                    ),
                  ),
                  SizedBox(height: Dimens.HEIGHT_16),
                  Text(
                    'Auction ending in',
                    style: TxtStyleMobile.txt_Large,
                  ),
                  SizedBox(height: Dimens.HEIGHT_4),
                  RowTimeWidget(hour: 12, minute: 30, second: 25),
                ],
              ),
            ),
            SizedBox(height: Dimens.HEIGHT_16),
            RaisedGradientButton(
              title: 'Place a bid',
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
