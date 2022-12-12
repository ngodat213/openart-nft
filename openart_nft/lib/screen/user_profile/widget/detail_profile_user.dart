import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';
import '../../../widget/detail_follow.dart';

class DetailProfileUserWidget extends StatelessWidget {
  const DetailProfileUserWidget({
    Key? key,
    required this.size,
    required this.following,
    required this.follower,
    required this.title,
    required this.linkSocial,
  }) : super(key: key);

  final Size size;
  final int following;
  final int follower;
  final String title;
  final Widget linkSocial;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailFollowWidget(
            following: following,
            follower: follower,
            size: size / 1.15,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            labelBtn: Text(
              'Follow',
              style: TxtStyleMobile.txt_Medium(color: AppColor.body),
            ),
          ),
          SizedBox(height: 30),
          Text('Followed by', style: TxtStyleMobile.txt_Large),
          SizedBox(height: 10),
          Container(
            width: Dimens.HEIGHT_30,
            height: Dimens.HEIGHT_30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
              image: DecorationImage(
                image: AssetImage(AppImage.avatarImage),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(title, style: TxtStyleMobile.txt_Small2),
          SizedBox(height: 20),
          Text('Member since  2021', style: TxtStyleMobile.txt_Medium()),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(Dimens.PADDING_10),
            decoration: BoxDecoration(
              color: AppColor.offWhite,
              borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
              boxShadow: [AppColor.boxShadow],
            ),
            child: linkSocial,
          )
        ],
      ),
    );
  }
}
