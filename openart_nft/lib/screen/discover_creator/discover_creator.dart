import 'package:flutter/material.dart';
import 'package:openart_nft/widget/btn_border_gradient.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/btn_raised_gradient.dart';
import '../../widget/btn_elevated.dart';
import '../../widget/footer.dart';
import '../../widget/header.dart';
import 'widget/card_creator.dart';

class DiscoverCreatorScreen extends StatelessWidget {
  const DiscoverCreatorScreen({super.key});

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
              Center(
                child: Text(
                  'Discover creator',
                  style: TxtStyleMobile.link_Large2,
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_16),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Follow at least five creators\nto build your feed…',
                  style: TxtStyleMobile.txt_Medium(color: AppColor.label),
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_40),
              Row(
                children: [
                  RaisedGradientButton(
                    size: size,
                    child: Text(
                      'Feature Creatior',
                      style:
                          TxtStyleMobile.txt_Medium(color: AppColor.offWhite),
                    ),
                    height: Dimens.HEIGHT_42,
                    borderRadius: Dimens.RADIUS_30,
                    width: size.width / 2.5,
                    onPressed: () {},
                  ),
                  ElevatedButtonWidget(
                    height: Dimens.HEIGHT_42,
                    width: size.width / 3.3,
                    color: AppColor.offWhite,
                    borderRadius: Dimens.RADIUS_30,
                    onPressed: () {},
                    child: Text(
                      'All Creator',
                      style: TxtStyleMobile.txt_Medium(color: AppColor.body),
                    ),
                  ),
                ],
              ),
              CardCreatorWidget(
                size: size,
                fullName: 'Ngô Văn Tiến Đạt',
                introduce:
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                follow: 2024,
                avatarUrl: AppImage.avatarImage,
                wallpaper: AppImage.wallpaper,
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
              ),
              CardCreatorWidget(
                size: size,
                fullName: 'Ngô Văn Tiến Đạt',
                introduce:
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                follow: 2024,
                avatarUrl: AppImage.avatarImage,
                wallpaper: AppImage.wallpaper,
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
              ),
              CardCreatorWidget(
                size: size,
                fullName: 'Ngô Văn Tiến Đạt',
                introduce:
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                follow: 2024,
                avatarUrl: AppImage.avatarImage,
                wallpaper: AppImage.wallpaper,
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                ),
              ),
              CardCreatorWidget(
                size: size,
                fullName: 'Ngô Văn Tiến Đạt',
                introduce:
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                follow: 2024,
                avatarUrl: AppImage.avatarImage,
                wallpaper: AppImage.wallpaper,
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_16,
                  right: Dimens.PADDING_16,
                  top: Dimens.PADDING_40,
                  bottom: Dimens.PADDING_40,
                ),
              ),
              Center(
                child: BorderGradinetButton(
                  size: size / 1.15,
                  child: Text('Load more', style: TxtStyleMobile.link_Large2),
                  onPressed: () {},
                ),
              ),
              FooterWidget(
                size: size,
                top: Dimens.HEIGHT_110,
              )
            ],
          ),
        ),
      ),
    );
  }
}
