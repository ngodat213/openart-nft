import 'package:flutter/material.dart';

import '../../../manager/manager_routes.dart';
import '../../../theme/dimens.dart';
import '../../../theme/image.dart';
import '../../../widget/base_navigation.dart';
import '../../home_screen/widget/card_item.dart';
import '../../home_screen/widget/sold_for.dart';

class ViewCollectedWidget extends StatelessWidget {
  const ViewCollectedWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimens.HEIGHT_24),
        CardItemWidget(
          urlImage: AppImage.rectangle,
          description: "Silent Color",
          name: 'Pawel Czerwinski',
          status: 'Creator',
          avatarUrl: AppImage.avatarImage,
          size: size,
        ),
        SizedBox(height: Dimens.HEIGHT_12),
        SoldForButtonWidget(
          size: size,
          eth: '2.00',
          onPressed: () {
            BaseNavigation.push(context, routeName: ManagerRoutes.detail_sold);
          },
        ),
      ],
    );
  }
}
