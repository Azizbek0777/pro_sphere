import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HistoryItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTapClose;
  final VoidCallback onTap;

  const HistoryItemWidget({
    super.key,
    required this.title,
    required this.onTapClose,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
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
              child: SvgPicture.asset(AppSvg.clock),
            ),
            SizedBox(width: 10.w),
            SizedBox(
              width: 250.w,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 17.sp),
              ),
            ),
            const Spacer(),
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
