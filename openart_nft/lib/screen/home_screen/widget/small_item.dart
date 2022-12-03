import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class SmallItemWidget extends StatelessWidget {
  const SmallItemWidget({
    Key? key,
    required this.url,
    required this.title,
    required this.eth,
    required this.highestBid,
  }) : super(key: key);
  final String url;
  final String title;
  final String eth;
  final String highestBid;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: Dimens.PADDING_13),
      width: 254 + 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 254,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.RADIUS_28),
                    image: DecorationImage(
                        image: AssetImage(url), fit: BoxFit.cover)),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.PADDING_7),
            padding: EdgeInsets.only(
                left: Dimens.PADDING_10, right: Dimens.PADDING_10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: TxtStyleMobile.link_Medium),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadiusDirectional.circular(Dimens.RADIUS_34),
                        border: Border.all(
                            width: Dimens.HEIGHT_1, color: AppColor.line),
                      ),
                      child: Text(eth + ' ETH'),
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Highest bid ',
                          style: TxtStyleMobile.txt_XSmall),
                      TextSpan(
                          text: highestBid + 'ETH',
                          style: TxtStyleDesktop.link_Small),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
