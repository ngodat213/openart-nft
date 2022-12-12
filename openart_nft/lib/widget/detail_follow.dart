import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/txt_style.dart';
import 'btn_elevated.dart';

class DetailFollowWidget extends StatelessWidget {
  const DetailFollowWidget({
    Key? key,
    required this.following,
    required this.follower,
    required this.size,
    required this.mainAxisAlignment,
    required this.labelBtn,
  }) : super(key: key);

  final int following;
  final int follower;
  final Size size;
  final MainAxisAlignment mainAxisAlignment;
  final Widget labelBtn;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: Dimens.PADDING_16,
            right: size.width / 1.7,
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(following.toString(), style: TxtStyleMobile.h3b),
                  Text('Following', style: TxtStyleMobile.link_XSmall),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(follower.toString(), style: TxtStyleMobile.h3b),
                  Text('Followers', style: TxtStyleMobile.link_XSmall),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: ElevatedButtonWidget(
            width: size.width / 3,
            height: Dimens.HEIGHT_40,
            borderRadius: Dimens.RADIUS_8,
            color: AppColor.offWhite,
            onPressed: () {},
            child: labelBtn,
          ),
        )
      ],
    );
  }
}
