import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../utils/style/colors.dart';
import '../../../utils/ui_needs/app_svg.dart';

class CustomBottomNavigationWidget extends StatelessWidget {
  final VoidCallback arrowBackTap;
  final VoidCallback arrowEnterTap;
  final VoidCallback homeTap;
  final VoidCallback bookTap;
  final VoidCallback oldEnterTap;
  final VoidCallback reload;
  final TextEditingController textEditingController;
  final ValueChanged<String?> onValueChanged;

  const CustomBottomNavigationWidget({
    super.key,
    required this.arrowBackTap,
    required this.arrowEnterTap,
    required this.homeTap,
    required this.bookTap,
    required this.oldEnterTap,
    required this.reload,
    required this.textEditingController,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        child: Column(
          children: [
            Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: AppColors.cF8F8F8,
                borderRadius: BorderRadius.circular(100.0.r),
              ),
              margin: EdgeInsets.all(16.w),
              child: Center(
                child: TextFormField(
                  controller: textEditingController,
                  onChanged: onValueChanged,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 0),
                    prefixIcon: CircleAvatar(
                      backgroundColor: AppColors.transparent,
                      child: SvgPicture.asset(
                        AppSvg.search,
                        colorFilter: const ColorFilter.mode(
                          AppColors.c141414,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: reload,
                      borderRadius: BorderRadius.circular(100.r),
                      child: CircleAvatar(
                        backgroundColor: AppColors.transparent,
                        child: SvgPicture.asset(
                          AppSvg.reload,
                          colorFilter: const ColorFilter.mode(
                            AppColors.c141414,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0,
                        color: AppColors.cF8F8F8,
                      ), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(100.0.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0,
                        color: AppColors.cF8F8F8,
                      ), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(100.0.r),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: arrowBackTap,
                  icon: SvgPicture.asset(
                    AppSvg.arrow,
                    colorFilter: const ColorFilter.mode(
                      AppColors.c00C7BE,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: arrowEnterTap,
                  icon: SvgPicture.asset(
                    AppSvg.arrowEnter,
                    colorFilter: const ColorFilter.mode(
                      AppColors.c00C7BE,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: homeTap,
                  icon: SvgPicture.asset(
                    AppSvg.home,
                    colorFilter: const ColorFilter.mode(
                      AppColors.c00C7BE,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: bookTap,
                  icon: SvgPicture.asset(
                    AppSvg.book,
                    colorFilter: const ColorFilter.mode(
                      AppColors.c00C7BE,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: oldEnterTap,
                  icon: SvgPicture.asset(
                    AppSvg.oldEnter,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
