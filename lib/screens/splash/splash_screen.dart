import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../route/route_constants.dart';
import '../../utils/ui_needs/app_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    openNextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppSvg.logo),
          SizedBox(height: 10.h),
          SizedBox(
            width: 200.w,
            child: LinearProgressIndicator(
              value: controller.value,
              borderRadius: BorderRadius.circular(100.r),
              backgroundColor: AppColors.cF8F8F8.withOpacity(0.2),
              color: AppColors.cFEFEFE,
            ),
          ),
        ],
      )),
    );
  }

  openNextPage(BuildContext context) async {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushNamed(context, RouteList.main);
    });
  }
}
