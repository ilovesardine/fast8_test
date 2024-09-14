import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_test/core/res/colors.dart';
import 'package:tech_test/core/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.brand,
    statusBarBrightness: Brightness.dark,
  ));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
