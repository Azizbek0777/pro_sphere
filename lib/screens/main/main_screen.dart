import 'package:flutter/material.dart';
import 'package:pro_sphere/screens/collection/collection_screen.dart';
import 'package:pro_sphere/screens/home/home_screen.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      body: currentIndex == 0
          ? const HomeScreen()
          : currentIndex == 1
              ? const CollectionScreen()
              : const SizedBox(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.backgroundColor,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
            backgroundColor: AppColors.backgroundColor,
            unselectedItemColor: Colors.white,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: AppColors.cFEFEFE,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(currentIndex == 0 ? AppSvg.home : AppSvg.homeOut),
                label: "Главная",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(currentIndex == 1 ? AppSvg.collection : AppSvg.collectionOut),
                label: "Сервисы",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(currentIndex == 2 ? AppSvg.news : AppSvg.newsOut),
                label: "Новости",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(currentIndex == 3 ? AppSvg.save : AppSvg.saveOut),
                label: "Вкладки",
              ),
            ]),
      ),
    );
  }
}
