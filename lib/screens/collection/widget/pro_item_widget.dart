import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProItemWidget extends StatelessWidget {
  final int index;
  final String title;
  final VoidCallback onTap;
  const ProItemWidget({
    super.key,
    required this.index,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        height: 140.h,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.cFEFEFE,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 14.r,
                backgroundColor: AppColors.cF8F8F8,
                child: Text(
                  "$index",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
            const Spacer(),
            Text(title, style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.cFF8686))
          ],
        ),
      ),
    );
  }
}
