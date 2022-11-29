import 'package:flutter/material.dart';

import '../theme/dimens.dart';
import '../theme/txt_style.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final LinearGradient color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        gradient: color,
      ),
      child: Text(text, style: TxtStyleMobile.link_Small),
    );
  }
}
