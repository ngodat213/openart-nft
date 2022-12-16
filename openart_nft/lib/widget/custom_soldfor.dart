import 'package:flutter/material.dart';

import '../manager/manager_routes.dart';
import '../theme/dimens.dart';
import 'base_navigation.dart';
import 'card_item.dart';
import 'sold_for.dart';

class CustomSoldFor extends StatelessWidget {
  const CustomSoldFor(
      {super.key,
      required this.size,
      required this.pathImage,
      required this.description,
      required this.name,
      required this.status,
      required this.pathAvatar,
      required this.soldEth});
  final Size size;
  final String pathImage;
  final String description;
  final String name;
  final String status;
  final String pathAvatar;
  final String soldEth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardItemWidget(
          urlImage: pathImage,
          description: description,
          name: name,
          status: status,
          avatarUrl: pathAvatar,
          size: size,
        ),
        SizedBox(height: Dimens.HEIGHT_12),
        SoldForButtonWidget(
          size: size,
          eth: soldEth,
          onPressed: () {
            BaseNavigation.push(context, routeName: ManagerRoutes.detail_sold);
          },
        ),
      ],
    );
  }
}
