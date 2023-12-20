import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_commerce/core/theme/constant/app_icons.dart';
import 'package:flutter_commerce/presentation/routes/route_path.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

//TODO 로그인 BLOC
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(
        seconds: 2,
      ),
      () => context.go(
        RoutePath.home,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset(AppIcons.mainLogo)),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
