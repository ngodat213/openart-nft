import 'package:flutter/material.dart';

import 'manager/manager_routes.dart';
import 'screen/profile_creator/profile_creator.dart';
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
      home: ProfileCreatorScreen(),
      routes: ManagerRoutes.manager,
    );
  }
}
