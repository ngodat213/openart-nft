import 'package:flutter/material.dart';

import '../../manager/manager_routes.dart';
import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/avatar_profile.dart';
import '../../widget/base_navigation.dart';
import '../../widget/btn_border_gradient.dart';
import '../../widget/detail_follow.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';

class ProfileEmptyScreen extends StatelessWidget {
  const ProfileEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(margin: EdgeInsets.all(Dimens.PADDING_16)),
              AvatarProfileWidget(
                height: size.height,
                width: size.width,
                imageUrl: AppImage.avatarImage,
                wallpeperUrl: AppImage.wallpaper,
                name: "Gift Habeshaw",
                uid: '52fs5ge5g45sov45a',
              ),
              Container(
                margin: EdgeInsets.only(top: Dimens.PADDING_30),
                child: DetailFollowWidget(
                  size: size / 2,
                  following: 150,
                  follower: 9999,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  labelBtn: Image.asset(
                    AppImage.icon_edit,
                    height: 28,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: Dimens.HEIGHT_24,
                  bottom: Dimens.HEIGHT_70,
                ),
                child:
                    Text('Member since  2021', style: TxtStyleMobile.txt_Large),
              ),
              Text(
                'Your collection is empty.',
                style: TxtStyleMobile.link_Large2,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.HEIGHT_56,
                  right: Dimens.HEIGHT_56,
                  bottom: Dimens.HEIGHT_48,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Start building your collection by placing bids on artwork.',
                  style: TxtStyleMobile.txt_Medium(color: AppColor.label),
                ),
              ),
              BorderGradinetButton(
                size: size / 1.15,
                onPressed: () {
                  BaseNavigation.push(context,
                      routeName: ManagerRoutes.profile_edit);
                },
                title: 'Explore OpenArt',
              ),
              FooterWidget(size: size, top: Dimens.HEIGHT_130)
            ],
          ),
        ),
      ),
    );
  }
}
