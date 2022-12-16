import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import '../theme/txt_style.dart';
import 'base_navigation.dart';
import 'btn_border_gradient.dart';
import 'btn_raised_gradient.dart';

class CustomDialog {
  CustomDialog._();

  static Future<dynamic> DialogMenu(BuildContext context, Size size) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: size.width - 36,
            padding: EdgeInsets.fromLTRB(Dimens.PADDING_20, Dimens.PADDING_20,
                Dimens.PADDING_20, Dimens.PADDING_30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
                color: AppColor.bgColor),
            child: Stack(
              children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Place a bid',
                        style: TxtStyleMobile.h3b,
                      ),
                      Text('You must bid at least 0.825 ETH',
                          style: TxtStyleMobile.txt_Medium()),
                      SizedBox(height: Dimens.HEIGHT_40),
                      Text('Your bid', style: TxtStyleDesktop.link_XSmall),
                      SizedBox(height: Dimens.HEIGHT_8),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Enter bid',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('ETH', style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Your balance',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('4.568 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Service fee',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('0.001 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total', style: TxtStyleMobile.txt_Medium()),
                            Text('0.001 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_24),
                      RaisedGradientButton(
                        size: size,
                        child: Text(
                          'Place a bid',
                          style: TxtStyleMobile.txt_Medium(
                              color: AppColor.offWhite),
                        ),
                        onPressed: () {
                          // ConnectWallet; error
                        },
                      ),
                      SizedBox(height: Dimens.HEIGHT_16),
                      BorderGradinetButton(
                        size: size,
                        onPressed: () {
                          BaseNavigation.pop(context);
                        },
                        child:
                            Text('Cancel', style: TxtStyleMobile.link_Large2),
                      ),
                    ]),
                Positioned(
                    right: 0,
                    child: GestureDetector(
                        onTap: () {
                          BaseNavigation.pop(context);
                        },
                        child: Image.asset(AppImage.icon_close)))
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Future<dynamic> ConnectWallet(BuildContext context, Size size) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: size.width - 36,
            padding: EdgeInsets.fromLTRB(Dimens.PADDING_20, Dimens.PADDING_20,
                Dimens.PADDING_20, Dimens.PADDING_30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
                color: AppColor.bgColor),
            child: Stack(
              children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Place a bid1',
                        style: TxtStyleMobile.h3b,
                      ),
                      Text('You must bid at least 0.825 ETH',
                          style: TxtStyleMobile.txt_Medium()),
                      SizedBox(height: Dimens.HEIGHT_40),
                      Text('Your bid', style: TxtStyleDesktop.link_XSmall),
                      SizedBox(height: Dimens.HEIGHT_8),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Enter bid',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('ETH', style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Your balance',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('4.568 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Service fee',
                                style: TxtStyleMobile.txt_Medium()),
                            Text('0.001 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_6),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total', style: TxtStyleMobile.txt_Medium()),
                            Text('0.001 ETH',
                                style: TxtStyleDesktop.link_XSmall)
                          ]),
                      SizedBox(height: Dimens.HEIGHT_24),
                      RaisedGradientButton(
                        size: size,
                        child: Text(
                          'Place a bid',
                          style: TxtStyleMobile.txt_Medium(
                              color: AppColor.offWhite),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: Dimens.HEIGHT_16),
                      BorderGradinetButton(
                        size: size,
                        onPressed: () {},
                        child:
                            Text('Cancel', style: TxtStyleMobile.link_Large2),
                      ),
                    ]),
                Positioned(
                    right: 0,
                    child: GestureDetector(
                        onTap: () {
                          BaseNavigation.pop(context);
                        },
                        child: Image.asset(AppImage.icon_close)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
