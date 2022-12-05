import 'package:flutter/material.dart';

import '../screen/detail_auction/detail_auction.dart';
import '../screen/detail_sold/detail_sold.dart';

class ManagerRoutes {
  ManagerRoutes._();

  static String detail_sold = '/detail_screen';
  static String detail_auction = '/detail_auction';

  // MANAGERS
  static Map<String, Widget Function(BuildContext)> manager = {
    detail_sold: (context) => DetailSoldScreen(),
    detail_auction: (context) => DetailAuctionScreen(),
  };
}
