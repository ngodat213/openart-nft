import 'package:flutter/material.dart';

import '../screen/detail_sold/detail_sold.dart';

class ManagerRoutes {
  ManagerRoutes._();

  static String detail_sold = '/onboarding_screen';

  // MANAGERS
  static Map<String, Widget Function(BuildContext)> manager = {
    detail_sold: (context) => DetailSoldScreen()
  };
}
