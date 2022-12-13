import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class CreateCollectionWidget extends StatelessWidget {
  const CreateCollectionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimens.PADDING_16),
      padding: EdgeInsets.only(
        left: Dimens.PADDING_13,
        top: Dimens.PADDING_13,
        bottom: Dimens.PADDING_19,
      ),
      width: size.width / 2.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_16),
        color: AppColor.inputBg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Dimens.HEIGHT_35,
            height: Dimens.HEIGHT_35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
              image: DecorationImage(
                image: AssetImage(AppImage.icon_plus),
              ),
              color: AppColor.line,
            ),
          ),
          SizedBox(height: Dimens.HEIGHT_16),
          Text('Create new collection', style: TxtStyleMobile.txt_XSmall)
        ],
      ),
    );
  }
}
