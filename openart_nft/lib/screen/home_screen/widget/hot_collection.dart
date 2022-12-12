import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class HotCollectionWidget extends StatelessWidget {
  const HotCollectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimens.PADDING_60,
        left: Dimens.PADDING_16,
        bottom: Dimens.PADDING_40,
      ),
      child: Row(
        children: [
          Container(
            width: Dimens.SIZE_19,
            height: Dimens.SIZE_19,
            child: Image.asset(AppImage.icon_starbid),
          ),
          Container(
            padding: EdgeInsets.only(
              left: Dimens.PADDING_7,
            ),
            child: Text('Hot Collection', style: TxtStyleMobile.h3b),
          )
        ],
      ),
    );
  }
}
