import 'package:flutter/material.dart';

import './view_collected.dart';
import './view_created.dart';

import '../../../theme/colors.dart';
import '../../../theme/dimens.dart';
import '../../../theme/txt_style.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    Key? key,
    required this.size,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final Size size;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 4 / 1.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: Dimens.PADDING_16,
              right: Dimens.PADDING_16,
            ),
            child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColor.titleActive,
              labelStyle: TxtStyleMobile.h3b,
              unselectedLabelStyle: TxtStyleMobile.h3b,
              indicatorColor: AppColor.titleActive,
              isScrollable: true,
              tabs: [
                Tab(text: 'Created'),
                Tab(text: 'Collected'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ViewCreatedWidget(size: size),
                ViewCollectedWidget(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
