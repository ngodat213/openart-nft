import 'package:flutter/material.dart';

import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class RowTimeWidget extends StatelessWidget {
  const RowTimeWidget({
    Key? key,
    required this.hour,
    required this.minute,
    required this.second,
  }) : super(key: key);
  final int hour;
  final int minute;
  final int second;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hour.toString(), style: TxtStyleMobile.h3b),
            Text('hours', style: TxtStyleMobile.txt_Small2),
          ],
        ),
        SizedBox(width: Dimens.HEIGHT_30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(minute.toString(), style: TxtStyleMobile.h3b),
            Text('minutes', style: TxtStyleMobile.txt_Small2),
          ],
        ),
        SizedBox(width: Dimens.HEIGHT_30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(second.toString(), style: TxtStyleMobile.h3b),
            Text('seconds', style: TxtStyleMobile.txt_Small2),
          ],
        ),
      ],
    );
  }
}
