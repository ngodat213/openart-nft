import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';

class BtnUploadWidget extends StatelessWidget {
  const BtnUploadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.HEIGHT_77,
      height: Dimens.HEIGHT_77,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_16),
        border: Border.all(width: 1, color: AppColor.placeholder),
        image: DecorationImage(
          image: AssetImage(AppImage.icon_export),
        ),
      ),
    );
  }
}
