import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';
import '../../../widget/btn_avatar_user.dart';

class CardSoldWidget extends StatelessWidget {
  const CardSoldWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.PADDING_20, vertical: Dimens.PADDING_20),
        margin: EdgeInsets.only(top: Dimens.PADDING_38),
        decoration: BoxDecoration(
          color: AppColor.offWhite,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_24),
          boxShadow: [AppColor.boxShadow],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(AppImage.icon_starbid)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Sold for ', style: TxtStyleMobile.txt_Large),
                  TextSpan(text: ' 1.50 ETH ', style: TxtStyleMobile.h3b),
                  TextSpan(
                      text: ' \$2,683.73 ', style: TxtStyleMobile.link_Medium),
                ],
              ),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Text('Owner by ', style: TxtStyleMobile.txt_Large),
                NoneAvatarUserWidget(
                  margin: EdgeInsets.only(left: Dimens.PADDING_10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
