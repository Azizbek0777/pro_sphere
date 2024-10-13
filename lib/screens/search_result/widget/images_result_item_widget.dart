import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ImagesResultItemWidget extends StatelessWidget {
  const ImagesResultItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: AppColors.white,
          ),
          child: Image.asset(AppPng.weatherSun),
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
    );
  }
}
