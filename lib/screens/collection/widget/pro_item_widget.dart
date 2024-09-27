import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProItemWidget extends StatelessWidget {
  const ProItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177.w,
      width: 177.w,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.cFEFEFE,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("01",style: Theme.of(context).textTheme.displayLarge,),
              const Spacer(),
              SvgPicture.asset(AppSvg.link),
            ],
          ),
          const Spacer(),
          Text(
            "PRO\nDonate",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.cFF8686)
          )
        ],
      ),
    );
  }
}
