import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/utils/style/colors.dart';
import 'package:pro_sphere/utils/ui_needs/app_png.dart';

// import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:pro_sphere/utils/ui_needs/app_svg.dart';
import 'package:svg_flutter/svg.dart';

class InfoWidget extends StatelessWidget {
  final String name;
  final String middleName;
  final String version;

  const InfoWidget({
    super.key,
    required this.version,
    required this.name,
    required this.middleName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 130.w,
          width: 130.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: AppColors.white,
          ),
          child: Container(
            margin: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  AppSvg.shape,
                  colorFilter: const ColorFilter.mode(
                    AppColors.c00C7BE,
                    BlendMode.srcIn,
                  ),
                ),
                SvgPicture.asset(
                  AppSvg.sferaWhite,
                  height: 42.h,
                  width: 42.h,
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.w),
            height: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 32.sp,
                      ),
                ),
                Text(
                  middleName,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 17.sp,
                      ),
                ),
                const Spacer(),
                Text(
                  version,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 15.sp,
                        color: AppColors.c141414.withOpacity(0.4),
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
