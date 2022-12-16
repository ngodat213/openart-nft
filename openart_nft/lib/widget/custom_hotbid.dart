import 'package:flutter/material.dart';

import '../manager/manager_routes.dart';
import '../theme/dimens.dart';
import '../theme/image.dart';
import 'base_navigation.dart';
import 'card_item.dart';
import 'current_bid.dart';

class CustomHotbid extends StatelessWidget {
  const CustomHotbid(
      {super.key,
      required this.size,
      required this.pathImage,
      required this.description,
      required this.name,
      required this.status,
      required this.pathAvatar,
      required this.current,
      required this.timeEnding});
  final Size size;
  final String pathImage;
  final String description;
  final String name;
  final String status;
  final String pathAvatar;
  final String current;
  final String timeEnding;

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
        CurrentBidButtonWidget(
          size: size,
          current: current,
          timeEnding: timeEnding,
          onPressed: () {
            BaseNavigation.push(context,
                routeName: ManagerRoutes.detail_auction);
          },
        ),
      ],
    );
  }
}
