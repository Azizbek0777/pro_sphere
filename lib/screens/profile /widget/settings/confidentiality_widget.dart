import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/ui_needs/app_svg.dart';
import 'confidentiality_item_widget.dart';

class ConfidentialityWidget extends StatefulWidget {
  const ConfidentialityWidget({super.key});

  @override
  State<ConfidentialityWidget> createState() => _ConfidentialityWidgetState();
}

class _ConfidentialityWidgetState extends State<ConfidentialityWidget> {
  List svgList = [
    AppSvg.menuSettings,
    AppSvg.timeReload,
  ];
  List titleList = [
    "Автозаполнение форм",
    "Сохранять историю",
  ];
  List boolList =[
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Конфиденциальность",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 20.sp,
              ),
        ),
        SizedBox(height: 10.h),
        for (int i = 0; i < svgList.length; i++)
          ConfidentialityItemWidget(
            title: titleList[i],
            onChanged: (value) {
              boolList[i]=value;
              setState(() {

              });
            },
            appSvg: svgList[i],
            isCheck: boolList[i],
          ),
      ],
    );
  }
}
