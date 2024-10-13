import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SaveItemWidget extends StatelessWidget {
  final VoidCallback onTap;

  const SaveItemWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: AppColors.white,
              ),
              child: Image.asset(
                AppPng.weatherSun,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 10.r,
                  backgroundColor: AppColors.c141414,
                  child: SvgPicture.asset(
                    AppSvg.google,
                    height: 10.w,
                    width: 10.w,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Google.com",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 15.sp),
                ),
              ],
            )
          ],
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 36.r,
              width: 36.r,
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.r),
                    bottomRight: Radius.circular(100.r),
                    bottomLeft: Radius.circular(100.r),
                  ),
                  border: Border.all(color: AppColors.backgroundColor, width: 2.w)),
              child: InkWell(
                onTap: onTap,
                child: CircleAvatar(
                  radius: 17.r,
                  backgroundColor: AppColors.white,
                  child: SvgPicture.asset(AppSvg.close),
                ),
              ),
            ))
      ],
    );
  }
}
