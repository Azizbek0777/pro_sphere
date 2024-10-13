import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/collection/collection_screen.dart';
import 'package:pro_sphere/screens/home/home_screen.dart';
import 'package:pro_sphere/screens/news/news_screen.dart';
import 'package:pro_sphere/screens/save/save_screen.dart';
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
  List svgList = [AppSvg.home, AppSvg.collection, AppSvg.book, AppSvg.save];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF5F6F7,
      body: Stack(
        children: [
          currentIndex == 0
              ? const HomeScreen()
              : currentIndex == 1
                  ? const CollectionScreen()
                  : currentIndex == 2
                      ? const NewsScreen()
                      :const SaveScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 20.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppSvg.bottomNavigationBar,
                  height: 60.h,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                for (int i = 0; i < svgList.length; i++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = i;
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28.h,
                          backgroundColor: i == currentIndex ? AppColors.c00C7BE : AppColors.transparent,
                          child: SvgPicture.asset(
                            i == 3 && currentIndex == i ? AppSvg.saveOut : svgList[i],
                          ),
                        ),
                        if (i != currentIndex)
                          CircleAvatar(
                            radius: 28.h,
                            backgroundColor: AppColors.transparent,
                            child: SvgPicture.asset(
                              svgList[i],
                              colorFilter: ColorFilter.mode(
                                AppColors.c141414.withOpacity(0.4),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                SizedBox(width: 16.w),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 28.h,
                        backgroundColor: 4 == currentIndex ? AppColors.c00C7BE : AppColors.transparent,
                        child: SvgPicture.asset(AppSvg.sferius),
                      ),
                      if (4 != currentIndex)
                        CircleAvatar(
                          radius: 28.h,
                          backgroundColor: AppColors.transparent,
                          child: SvgPicture.asset(
                            AppSvg.sferius,
                            colorFilter: ColorFilter.mode(
                              AppColors.c141414.withOpacity(0.4),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
