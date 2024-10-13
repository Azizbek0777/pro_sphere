import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/profile%20/widget/settings/actions_item_widget.dart';

import '../../../../utils/ui_needs/app_svg.dart';

class ActionsWidget extends StatefulWidget {
  const ActionsWidget({super.key});

  @override
  State<ActionsWidget> createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget> {
  List svgList = [
    AppSvg.trash,
    AppSvg.trash,
    AppSvg.logOut,
  ];

  List titleList = [
    "Очистить кэш",
    "Очистить историю",
    "Выйти из аккаунта",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Действия",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 20.sp,
              ),
        ),
        SizedBox(height: 10.h),
        for (int i = 0; i < svgList.length; i++)
          ActionsItemWidget(
            title: titleList[i],
            onTap: () {},
            appSvg: svgList[i],
            isTitleRed: i != 2,
          ),
      ],
    );
  }
}
