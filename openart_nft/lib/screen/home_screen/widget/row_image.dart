import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';

class RowImageWidget extends StatelessWidget {
  const RowImageWidget({
    Key? key,
    required this.image1,
    required this.image2,
  }) : super(key: key);
  final String image1;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: Dimens.HEIGHT_200,
          width: Dimens.HEIGHT_165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
            image: DecorationImage(
              image: AssetImage(image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: Dimens.HEIGHT_200,
          width: Dimens.HEIGHT_165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
            image: DecorationImage(
              image: AssetImage(image2),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
