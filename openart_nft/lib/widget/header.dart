import 'package:flutter/material.dart';

import '../manager/manager_routes.dart';
import '../theme/image.dart';
import 'base_navigation.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    this.margin,
    Key? key,
    required this.size,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImage.logo),
          GestureDetector(
            onTap: () {
              BaseNavigation.push(context,
                  routeName: ManagerRoutes.menu_screen);
            },
            child: Image.asset(AppImage.icon_menu),
          )
        ],
      ),
    );
  }
}
