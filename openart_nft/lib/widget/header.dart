import 'package:flutter/material.dart';

import '../theme/image.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    this.margin,
    Key? key,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Image.asset(AppImage.logo), Image.asset(AppImage.icon_menu)],
      ),
    );
  }
}
