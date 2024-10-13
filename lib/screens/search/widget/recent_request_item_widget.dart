import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class RecentRequestItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTapClose;
  final VoidCallback onTap;

  const RecentRequestItemWidget({
    super.key,
    required this.title,
    required this.onTapClose,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      margin: EdgeInsets.only(top: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: AppColors.white,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.c141414,
              child: SvgPicture.asset(AppSvg.google),
            ),
            SizedBox(width: 10.w),
            SizedBox(
              width: 250.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 17.sp,
                        ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 13.sp,
                          color: AppColors.c000000.withOpacity(0.4),
                        ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              "13:41",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.c000000.withOpacity(.4),
                    fontSize: 13.sp,
                  ),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: onTapClose,
              child: SvgPicture.asset(AppSvg.close),
            ),
            SizedBox(width: 15.w),
          ],
        ),
      ),
    );
  }
}
