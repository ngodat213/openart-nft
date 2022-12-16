import 'package:flutter/material.dart';

import '../../manager/manager_routes.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/avatar_profile.dart';
import '../../widget/base_navigation.dart';
import '../../widget/btn_border_gradient.dart';
import '../../widget/card_item.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import '../../widget/sold_for.dart';
import 'widget/card_creator.dart';

class ProfileCreatorScreen extends StatelessWidget {
  const ProfileCreatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                margin: EdgeInsets.all(Dimens.PADDING_16),
                size: size,
              ),
              AvatarProfileWidget(
                height: size.height,
                width: size.width,
                imageUrl: AppImage.avatarImage,
                wallpeperUrl: AppImage.wallpaper,
                name: "Gift Habeshaw",
                uid: '52fs5ge5g45sov45a',
              ),
              CardCreatorWidget(
                size: size,
                mail: 'ngodat.it213@gmail.com',
                card: 'Linked',
                phone: '(+60) 264 859 62',
                link: 'OpenArt.design',
                since: 2021,
              ),
              SizedBox(height: Dimens.HEIGHT_64),
              Container(
                margin: EdgeInsets.only(left: Dimens.PADDING_16),
                child: Text('My Items', style: TxtStyleMobile.h3b),
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              CardItemWidget(
                urlImage: AppImage.rectangle3,
                description: "Silent Color",
                name: 'Pawel Czerwinski',
                status: 'Creator',
                avatarUrl: AppImage.avatarImage,
                size: size,
              ),
              SizedBox(height: Dimens.HEIGHT_12),
              SoldForButtonWidget(
                size: size,
                eth: '2.00',
                onPressed: () {
                  BaseNavigation.push(context,
                      routeName: ManagerRoutes.detail_sold);
                },
              ),
              SizedBox(height: Dimens.HEIGHT_40),
              CardItemWidget(
                urlImage: AppImage.rectangle2,
                description: "Silent Color",
                name: 'Pawel Czerwinski',
                status: 'Creator',
                avatarUrl: AppImage.avatarImage,
                size: size,
              ),
              SizedBox(height: Dimens.HEIGHT_12),
              SoldForButtonWidget(
                size: size,
                eth: '2.00',
                onPressed: () {
                  BaseNavigation.push(context,
                      routeName: ManagerRoutes.detail_sold);
                },
              ),
              SizedBox(height: Dimens.HEIGHT_40),
              CardItemWidget(
                urlImage: AppImage.rectangle5,
                description: "Silent Color",
                name: 'Pawel Czerwinski',
                status: 'Creator',
                avatarUrl: AppImage.avatarImage,
                size: size,
              ),
              SizedBox(height: Dimens.HEIGHT_12),
              SoldForButtonWidget(
                size: size,
                eth: '2.00',
                onPressed: () {
                  BaseNavigation.push(context,
                      routeName: ManagerRoutes.detail_sold);
                },
              ),
              SizedBox(height: Dimens.HEIGHT_40),
              Center(
                child: BorderGradinetButton(
                  size: size / 1.15,
                  onPressed: () {},
                  child: Text('Load more', style: TxtStyleMobile.link_Large2),
                ),
              ),
              FooterWidget(size: size, top: Dimens.PADDING_110)
            ],
          ),
        ),
      ),
    );
  }
}
