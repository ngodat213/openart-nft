import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';
import '../../../widget/btn_elevated.dart';

class CardCreatorWidget extends StatelessWidget {
  const CardCreatorWidget({
    Key? key,
    required this.size,
    required this.fullName,
    required this.introduce,
    required this.follow,
    required this.avatarUrl,
    required this.wallpaper,
    this.margin,
  }) : super(key: key);

  final Size size;
  final String fullName;
  final String introduce;
  final int follow;
  final String avatarUrl;
  final String wallpaper;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimens.PADDING_16),
      margin: margin,
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
        boxShadow: [AppColor.boxShadow],
      ),
      child: Column(
        children: [
          Container(
            height: 220,
            child: Stack(
              children: [
                Container(
                  height: size.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimens.RADIUS_24),
                      topLeft: Radius.circular(Dimens.RADIUS_24),
                    ),
                    image: DecorationImage(
                      image: AssetImage(wallpaper),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: size.width / 3,
                  top: size.height / 7,
                  child: Container(
                    height: size.height / 8,
                    width: size.height / 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                      image: DecorationImage(
                        image: AssetImage(avatarUrl),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: Dimens.HEIGHT_4,
                        color: AppColor.bgColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: Dimens.PADDING_16,
              top: Dimens.PADDING_10,
              right: Dimens.PADDING_16,
            ),
            child: Column(
              children: [
                Text(fullName, style: TxtStyleMobile.h3b),
                Container(
                  margin: EdgeInsets.only(top: Dimens.PADDING_7),
                  child: Text(
                    textAlign: TextAlign.center,
                    introduce,
                    style: TxtStyleMobile.txt_Medium(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Dimens.PADDING_20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: follow.toString(), style: TxtStyleMobile.h2b),
                        TextSpan(
                          text: ' Followers',
                          style:
                              TxtStyleMobile.txt_Medium(color: AppColor.body),
                        )
                      ])),
                      ElevatedButtonWidget(
                        color: AppColor.offWhite,
                        width: 112,
                        height: 40,
                        onPressed: () {},
                        borderRadius: Dimens.RADIUS_8,
                        child: Text('Follow',
                            style: TxtStyleMobile.txt_Medium(
                                color: AppColor.body)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
