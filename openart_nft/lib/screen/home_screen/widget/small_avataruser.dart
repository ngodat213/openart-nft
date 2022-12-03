import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';

class AvatarUserWidget extends StatelessWidget {
  const AvatarUserWidget({
    Key? key,
    required this.url,
    required this.status,
  }) : super(key: key);
  final String url;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
            image: DecorationImage(
              image: AssetImage(url),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: Dimens.HEIGHT_12,
            width: Dimens.HEIGHT_12,
            decoration: BoxDecoration(
              color: status ? AppColor.successDefault : AppColor.line,
              border: Border.all(
                width: Dimens.HEIGHT_1,
                color: AppColor.white,
              ),
              borderRadius: BorderRadius.circular(Dimens.RADIUS_100),
            ),
          ),
        )
      ],
    );
  }
}
