import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/style/colors.dart';
import '../../../utils/ui_needs/app_png.dart';

class WeatheWidget extends StatelessWidget {
  const WeatheWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: EdgeInsets.all(10.w),
          height: 78.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.c5FE0D8,
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tashkent",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.cFEFEFE,
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    "+25°",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppColors.cFEFEFE,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Image.asset(AppPng.weatherSun,height: 54.h ,)
            ],
          ),
        ),
      );
  }
}
