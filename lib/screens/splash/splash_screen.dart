import 'dart:async';

import 'package:flutter/material.dart';
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
    openNextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(child: SvgPicture.asset(AppSvg.logo)),
    );
  }

  openNextPage(BuildContext context) async {
    Timer(const Duration(milliseconds: 300), () async {
      Navigator.pushNamed(context, RouteList.main);
    });
  }
}
