import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/constant/app_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        //appBar 높이 설정
        preferredSize: Size.fromHeight(
          44.0,
        ),
        child: Container(
          //Container를 활용하여 AppBar 영역 패딩 적용
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          color: Theme.of(context).colorScheme.primary,
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.mainLogo,
              ),
            ),
            title: Text(
              'tapBar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.location,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.background,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.cart,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.background,
                    BlendMode.srcIn,
                  ),
                ),
              )
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86,
          ),
        ),
      ),
      body: Center(
        child: Text('main_sreen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navHome),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navCategory),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navSearch),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.navUser),
            label: 'user',
          ),
        ],
        //선택된 아이템 강조효과 제거
        type: BottomNavigationBarType.fixed,
        //BNB Label 미노출
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
