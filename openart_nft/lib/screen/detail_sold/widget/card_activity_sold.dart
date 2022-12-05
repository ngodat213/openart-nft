import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';
import '../../home_screen/widget/small_avataruser.dart';

class CardActivitySoldWidget extends StatelessWidget {
  const CardActivitySoldWidget({
    Key? key,
    required this.avatarUrl,
    required this.title,
    required this.daytime,
    required this.result,
  }) : super(key: key);
  final String avatarUrl;
  final String title;
  final String daytime;
  final Widget result;

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
        borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(daytime, style: TxtStyleMobile.txt_Small),
                  result
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
