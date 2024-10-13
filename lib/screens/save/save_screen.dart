import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/save/widget/history_scroll_widget.dart';
import 'package:pro_sphere/screens/save/widget/history_widget.dart';
import 'package:pro_sphere/screens/save/widget/save_widget.dart';
import 'package:pro_sphere/screens/save/widget/tab_button_widget.dart';

import '../../utils/style/colors.dart';
import '../widget/custom_app_bar.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  bool isTabButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: customAppBar(
          context: context,
          onTapCloseOrAccount: () {
            Navigator.pushNamed(context, RouteList.profile);
          },
          title: 'Вкладки',
          isAccountIcon: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 10.h),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.white,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(44.r)),
                        child: TabButtonWidget(
                          buttonColor: isTabButton ? AppColors.c00C7BE : AppColors.white,
                          title: "Вкладки",
                          onTap: () {
                            setState(() {
                              isTabButton = true;
                            });
                          },
                          titleColor: isTabButton ? AppColors.white : AppColors.c141414.withOpacity(0.4),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(44.r)),
                        child: TabButtonWidget(
                          buttonColor: !isTabButton ? AppColors.c00C7BE : AppColors.white,
                          title: "История",
                          onTap: () {
                            setState(() {
                              isTabButton = false;
                            });
                          },
                          titleColor: !isTabButton ? AppColors.white : AppColors.c141414.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: isTabButton ? const SaveWidget() : const HistoryScrollWidget(),
            ),
          ],
        ));
  }
}
