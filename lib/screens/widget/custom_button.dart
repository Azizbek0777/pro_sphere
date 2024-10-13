import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final Color titleColor;
  final VoidCallback onTap;
  final String title;

  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.title,
    required this.onTap,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(44.r),
        child: Container(
          alignment: Alignment.center,
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(448.r),
            color: buttonColor,
          ),
          child: Text(title,style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 17.sp,color: titleColor),),
        ),
      ),
    );
  }
}
