import 'package:flutter/material.dart';
import 'package:openart_nft/screen/home_screen/widget/small_item.dart';

import '../../../theme/dimens.dart';

class ListHotbidWidget extends StatelessWidget {
  const ListHotbidWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: Dimens.PADDING_16),
        child: Row(
          children: images
              .map((e) => Builder(builder: (context) {
                    return SmallItemWidget(
                        url: e,
                        title: 'Inside Kings Cross',
                        eth: '2.3',
                        highestBid: '1.00');
                  }))
              .toList(),
        ),
      ),
    );
  }
}
