import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';

class BtnHagtagWidget extends StatelessWidget {
  const BtnHagtagWidget({
    Key? key,
    required this.title,
    this.margin,
  }) : super(key: key);
  final String title;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_28),
        border: Border.all(width: Dimens.HEIGHT_1, color: AppColor.line),
      ),
      child: Text('#' + title),
    );
  }
}
