import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/collection/widget/pro_item_widget.dart';

import '../../utils/style/colors.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFEFEFE,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16.0.w),
            height: 52.h,
            alignment: Alignment.centerLeft,
            child: Text(
              "Сервисы",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors.c050505,
                    fontSize: 28.sp,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0.w, right: 16.w),
              color: AppColors.cF5F6F7,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProItemWidget(),
                        ProItemWidget(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
