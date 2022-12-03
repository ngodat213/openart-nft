import 'package:flutter/material.dart';
import 'package:openart_nft/screen/home_screen/widget/small_avataruser.dart';
import 'package:openart_nft/screen/home_screen/widget/btn_outline.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class FollowUserWidget extends StatelessWidget {
  const FollowUserWidget({
    Key? key,
    required this.avatarUrl,
    required this.userName,
  }) : super(key: key);
  final String avatarUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimens.PADDING_16, right: Dimens.PADDING_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AvatarUserWidget(
                url: avatarUrl,
                status: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimens.PADDING_7),
                child:
                    Text('By ' + userName, style: TxtStyleDesktop.link_XSmall),
              )
            ],
          ),
          BtnOutlineWidget(
            onPressed: () {},
            color: AppColor.placeholder,
            borderRadius: Dimens.RADIUS_8,
            child: Row(children: [
              Image.asset(AppImage.icon_Heart),
              Padding(
                padding: const EdgeInsets.all(Dimens.PADDING_7),
                child: Text(
                  'Follow',
                  style: TxtStyleMobile.txt_Medium,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
