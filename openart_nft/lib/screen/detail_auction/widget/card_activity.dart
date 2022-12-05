import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class CardActivityWidget extends StatelessWidget {
  const CardActivityWidget({
    Key? key,
    required this.title,
    required this.daytime,
    required this.eth,
    required this.total,
  }) : super(key: key);
  final String title;
  final String daytime;
  final String eth;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.PADDING_16),
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
      ),
      decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: Dimens.HEIGHT_48,
                height: Dimens.HEIGHT_48,
                margin: EdgeInsets.only(
                  right: Dimens.PADDING_13,
                  bottom: Dimens.PADDING_16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                  image: DecorationImage(
                    image: AssetImage(AppImage.avatarImage),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TxtStyleMobile.link_XSmall),
                  Text(daytime, style: TxtStyleMobile.txt_Small2),
                  SizedBox(height: Dimens.HEIGHT_12),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: eth + ' ETH ',
                            style: TxtStyleMobile.link_Medium),
                        TextSpan(
                            text: '\$' + total, style: TxtStyleMobile.txt_Small)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Image.asset(AppImage.icon_External),
        ],
      ),
    );
  }
}
