import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';
import '../../../theme/image.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Dimens.PADDING_16,
        Dimens.PADDING_6,
        Dimens.PADDING_16,
        Dimens.PADDING_16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Image.asset(AppImage.logo), Image.asset(AppImage.icon_Menu)],
      ),
    );
  }
}
