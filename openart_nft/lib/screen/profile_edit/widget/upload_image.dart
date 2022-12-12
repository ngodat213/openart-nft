import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class UploadImageWidget extends StatelessWidget {
  const UploadImageWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 32,
      margin: EdgeInsets.all(Dimens.PADDING_16),
      padding: EdgeInsets.only(
        top: Dimens.PADDING_40,
        bottom: Dimens.PADDING_20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_32),
        color: AppColor.inputBg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImage.icon_image),
          Text(
            'Drag and drop or browce a file',
            style: TxtStyleMobile.link_Large2,
          ),
          Text(
            textAlign: TextAlign.center,
            'Recommended size: JPG, PNG, GIF\n(1500x1500px, Max 10mb)',
            style: TxtStyleMobile.txt_Medium(),
          )
        ],
      ),
    );
  }
}
