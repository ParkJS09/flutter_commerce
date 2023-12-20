import 'package:flutter/material.dart';
import 'package:flutter_commerce/presentation/home/home_page.dart';
import 'package:flutter_commerce/presentation/routes/routes.dart';
import 'package:flutter_commerce/presentation/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/theme_data.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: CustomThemeData.themeData,
    );
  }
}
