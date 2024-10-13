import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';

class ItemSearchWidget extends StatelessWidget {
  final bool isCheck;
  final VoidCallback onTap;
  final String title;

  const ItemSearchWidget({
    super.key,
    required this.isCheck,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: isCheck ? AppColors.c00C7BE : AppColors.cF8F8F8,
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 15.sp, color: isCheck ? AppColors.white : AppColors.c141414.withOpacity(0.4)),
            ),
          ),
        ),
      ),
    );
  }
}
