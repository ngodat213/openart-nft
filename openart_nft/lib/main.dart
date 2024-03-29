import 'package:flutter/material.dart';

import 'manager/manager_routes.dart';
import 'screen/home_screen/home_screen.dart';
import 'theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.bgColor,
      ),
      home: HomeScreen(),
      routes: ManagerRoutes.manager,
    );
  }
}
