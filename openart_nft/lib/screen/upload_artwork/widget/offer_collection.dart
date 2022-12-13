import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';

class OfferCollectionWidget extends StatelessWidget {
  const OfferCollectionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2.25,
      height: size.height / 7.9,
      padding: EdgeInsets.all(Dimens.PADDING_7),
      margin: EdgeInsets.only(right: Dimens.PADDING_16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_16),
        color: AppColor.inputBg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width / 5,
            height: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimens.RADIUS_8),
                bottomLeft: Radius.circular(Dimens.RADIUS_8),
              ),
              image: DecorationImage(
                image: AssetImage(AppImage.rectangle9),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.width / 5,
            height: size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimens.RADIUS_8),
                bottomRight: Radius.circular(Dimens.RADIUS_8),
              ),
              image: DecorationImage(
                image: AssetImage(AppImage.rectangle8),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
