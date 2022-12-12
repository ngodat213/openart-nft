import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import '../theme/txt_style.dart';
import 'btn_avatar_user.dart';
import 'btn_hagtag.dart';

class NFTDetailWidget extends StatelessWidget {
  const NFTDetailWidget({
    Key? key,
    required this.size,
    required this.url,
    required this.title,
    required this.userName,
    required this.discription,
    required this.hagtag,
  }) : super(key: key);
  final String url;
  final String title;
  final String userName;
  final String discription;
  final List<String> hagtag;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: Dimens.PADDING_40),
            width: size.width - 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
            ),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: Dimens.PADDING_20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TxtStyleMobile.h3b,
              ),
              Row(
                children: [
                  Container(
                    height: Dimens.HEIGHT_40,
                    width: Dimens.HEIGHT_40,
                    margin: EdgeInsets.only(right: Dimens.PADDING_13),
                    decoration: BoxDecoration(
                        color: AppColor.offWhite,
                        borderRadius: BorderRadius.circular(Dimens.RADIUS_100)),
                    child: Image.asset(AppImage.icon_heart),
                  ),
                  Container(
                    height: Dimens.HEIGHT_40,
                    width: Dimens.HEIGHT_40,
                    decoration: BoxDecoration(
                        color: AppColor.offWhite,
                        borderRadius: BorderRadius.circular(Dimens.RADIUS_100)),
                    child: Image.asset(AppImage.icon_export),
                  ),
                ],
              ),
            ],
          ),
        ),
        NoneAvatarUserWidget(
          margin: EdgeInsets.only(
            left: Dimens.PADDING_30,
            top: Dimens.PADDING_10,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimens.PADDING_30,
            top: Dimens.PADDING_10,
            right: Dimens.PADDING_30,
          ),
          alignment: Alignment.center,
          child: Text(discription, style: TxtStyleMobile.txt_Small2),
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimens.PADDING_30,
            top: Dimens.PADDING_10,
          ),
          child: Row(
            children: hagtag
                .map((e) => Builder(builder: (context) {
                      return BtnHagtagWidget(
                        title: e,
                        margin: EdgeInsets.only(right: Dimens.PADDING_4),
                      );
                    }))
                .toList(),
          ),
        ),
      ],
    );
  }
}
