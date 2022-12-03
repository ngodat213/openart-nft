import 'package:flutter/material.dart';
import 'package:openart_nft/screen/home_screen/widget/small_avataruser.dart';
import 'dart:io';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
    required this.urlImage,
    required this.description,
    required this.name,
    required this.status,
    required this.avatarUrl,
    required this.size,
  }) : super(key: key);
  final String urlImage;
  final String description;
  final String name;
  final String status;
  final String avatarUrl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width - 32,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
          boxShadow: [
            BoxShadow(
              color: AppColor.placeholder.withOpacity(0.5),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(11, 11, 11, 13),
              width: size.width - 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
              ),
              child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
            ProductWidget(
              description: description,
              name: name,
              status: status,
              avatarUrl: avatarUrl,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.description,
    required this.avatarUrl,
    required this.name,
    required this.status,
  }) : super(key: key);
  final String description;
  final String name;
  final String status;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: Dimens.PADDING_13,
          ),
          child: Text(
            description,
            style: TxtStyleMobile.h3b,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Dimens.PADDING_13,
            top: Dimens.PADDING_4,
            right: Dimens.PADDING_22,
            bottom: Dimens.PADDING_16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AvatarUserWidget(url: avatarUrl, status: true),
                  Container(
                    margin: EdgeInsets.only(left: Dimens.PADDING_10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TxtStyleDesktop.link_Medium),
                        Text(status, style: TxtStyleDesktop.txt_XSmall),
                      ],
                    ),
                  ),
                ],
              ),
              ImageIcon(
                AssetImage(AppImage.icon_Heart),
                size: Dimens.SIZE_20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
