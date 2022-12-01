import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../theme/txt_style.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.PADDING_24),
      padding: EdgeInsets.only(
        left: Dimens.PADDING_10,
        right: Dimens.PADDING_10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        color: AppColor.inputBg,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search items, collections, and accounts',
                hintStyle: TxtStyleMobile.txt_XSmall,
                border: InputBorder.none,
                icon: ImageIcon(
                  AssetImage(AppImage.icon_Search),
                  size: Dimens.SIZE_16,
                ),
              ),
            ),
          ),
          ImageIcon(
            AssetImage(AppImage.icon_Microphone),
            size: Dimens.SIZE_16,
          ),
        ],
      ),
    );
  }
}
