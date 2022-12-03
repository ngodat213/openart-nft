import 'package:flutter/material.dart';

import '../theme/dimens.dart';

class DividerWidget extends StatelessWidget {
  DividerWidget({
    Key? key,
    this.width,
    this.height,
    this.margin,
    required this.color,
  }) : super(key: key);
  final Color color;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Dimens.HEIGHT_1,
        width: width,
        color: color,
        margin: margin,
      ),
    );
  }
}
