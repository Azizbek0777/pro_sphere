import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/style/colors.dart';
import '../../../utils/ui_needs/app_png.dart';

class WeatheWidget extends StatelessWidget {
  const WeatheWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8.w),
        // height: 120.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16.r,
                  backgroundColor: AppColors.cF8F8F8,
                  child: SvgPicture.asset(AppSvg.location),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ташкент",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp),
                    ),
                    Text(
                      "24 сентября",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.c141414.withOpacity(0.4),
                          ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Тепло",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 15.sp, color: AppColors.c141414.withOpacity(0.4)),
                    ),
                    Text(
                      "+25°",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 40.sp, color: AppColors.c141414,fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(AppPng.weatherSun,width: 60,height: 60,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
