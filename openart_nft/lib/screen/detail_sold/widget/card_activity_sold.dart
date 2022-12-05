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
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
        top: Dimens.PADDING_13,
      ),
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_13,
        Dimens.PADDING_13,
        Dimens.PADDING_20,
        Dimens.PADDING_13,
      ),
      decoration: BoxDecoration(
        color: AppColor.offWhite,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AvatarUserWidget(
                url: avatarUrl,
                status: true,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_13,
                  right: Dimens.PADDING_75,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TxtStyleMobile.link_XSmall,
                    ),
                    Text(
                      daytime,
                      style: TxtStyleMobile.txt_Small,
                    )
                  ],
                ),
              ),
              Image.asset(AppImage.icon_External),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: Dimens.PADDING_60),
            child: result,
          )
        ],
      ),
    );
  }
}
