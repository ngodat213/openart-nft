import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import '../theme/txt_style.dart';

class AvatarProfileWidget extends StatelessWidget {
  const AvatarProfileWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    required this.wallpeperUrl,
    required this.name,
    required this.uid,
  }) : super(key: key);

  final double height;
  final double width;
  final String imageUrl;
  final String wallpeperUrl;
  final String name;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height / 3,
          child: Stack(
            children: [
              Container(
                width: width,
                height: height / 4.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.wallpaper),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: width / 3,
                top: height / 7,
                child: Container(
                  height: Dimens.HEIGHT_130,
                  width: Dimens.HEIGHT_130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
                    image: DecorationImage(
                        image: AssetImage(AppImage.avatarImage)),
                    border: Border.all(width: 2, color: AppColor.bgColor),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text('Gift Habeshaw', style: TxtStyleMobile.link_Medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('52fs5ge5g45sov45a ', style: TxtStyleMobile.txt_Small2),
            Image.asset(
              AppImage.icon_Copy,
              width: Dimens.HEIGHT_14,
              height: Dimens.HEIGHT_14,
            ),
          ],
        )
      ],
    );
  }
}
