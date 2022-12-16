import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/image.dart';
import '../../theme/txt_style.dart';
import '../../widget/base_navigation.dart';
import '../../widget/btn_raised_gradient.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(Dimens.PADDING_16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImage.logo),
                    GestureDetector(
                      onTap: (() {
                        BaseNavigation.pop(context);
                      }),
                      child: Image.asset(AppImage.icon_close),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimens.HEIGHT_177),
              GestureDetector(
                onTap: (() {
                  BaseNavigation.pop(context);
                }),
                child: Text('About OpenArt', style: TxtStyleDesktop.h3b),
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              GestureDetector(
                onTap: (() {
                  BaseNavigation.pop(context);
                }),
                child: Text('Blog', style: TxtStyleDesktop.h3b),
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              GestureDetector(
                onTap: (() {
                  BaseNavigation.pop(context);
                }),
                child: Text('Help', style: TxtStyleDesktop.h3b),
              ),
              SizedBox(height: Dimens.HEIGHT_24),
              GestureDetector(
                onTap: (() {
                  BaseNavigation.pop(context);
                }),
                child: Text('Contact', style: TxtStyleDesktop.h3b),
              ),
              SizedBox(height: Dimens.HEIGHT_84),
              RaisedGradientButton(
                size: size,
                width: size.width - 66,
                onPressed: () {},
                child: Text(
                  'Connect wallet',
                  style: TxtStyleMobile.txt_Medium(color: AppColor.offWhite),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
