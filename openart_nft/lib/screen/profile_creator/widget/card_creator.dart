import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';
import '../../home_screen/widget/btn_outline.dart';

class CardCreatorWidget extends StatelessWidget {
  const CardCreatorWidget({
    Key? key,
    required this.size,
    required this.mail,
    required this.card,
    required this.phone,
    required this.link,
    required this.since,
  }) : super(key: key);

  final Size size;
  final String mail;
  final String card;
  final String phone;
  final String link;
  final int since;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 32,
      margin: EdgeInsets.only(
        left: Dimens.PADDING_16,
        right: Dimens.PADDING_16,
      ),
      padding: EdgeInsets.only(
        top: Dimens.PADDING_30,
        left: Dimens.PADDING_20,
        bottom: Dimens.PADDING_20,
      ),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: Dimens.HEIGHT_48,
              width: Dimens.HEIGHT_48,
              margin: EdgeInsets.only(right: Dimens.PADDING_10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                color: AppColor.bgColor,
              ),
              child: Image.asset(AppImage.icon_edit),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _linkRickText(AppImage.icon_mail, mail),
              SizedBox(height: Dimens.HEIGHT_16),
              _linkRickText(AppImage.icon_card, link),
              SizedBox(height: Dimens.HEIGHT_16),
              _linkRickText(AppImage.icon_call, phone),
              SizedBox(height: Dimens.HEIGHT_16),
              _linkRickText(AppImage.icon_link, link),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.PADDING_45,
                  top: Dimens.PADDING_30,
                  right: Dimens.PADDING_45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BtnOutlineWidget(
                      onPressed: () {},
                      color: AppColor.body,
                      height: 40,
                      width: 144,
                      borderRadius: Dimens.RADIUS_8,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppImage.icon_heart),
                          Padding(
                            padding: EdgeInsets.only(left: Dimens.PADDING_7),
                            child: Text(
                              'Follow',
                              style: TxtStyleMobile.txt_Medium(),
                            ),
                          )
                        ],
                      ),
                    ),
                    BtnOutlineWidget(
                      onPressed: () {},
                      color: AppColor.body,
                      height: 40,
                      borderRadius: Dimens.RADIUS_100,
                      child: Image.asset(AppImage.icon_export),
                    ),
                    BtnOutlineWidget(
                      onPressed: () {},
                      color: AppColor.body,
                      height: 40,
                      borderRadius: Dimens.RADIUS_100,
                      child: Image.asset(AppImage.icon_more),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: Dimens.PADDING_19),
                  child: Text(
                    'Member since ' + since.toString(),
                    style: TxtStyleMobile.txt_Small2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  RichText _linkRickText(String icon, String title) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
              child: Container(
            margin: EdgeInsets.only(right: Dimens.PADDING_13),
            child: Image.asset(icon, width: 20),
          )),
          TextSpan(text: title, style: TxtStyleMobile.txt_Small2),
        ],
      ),
    );
  }
}
