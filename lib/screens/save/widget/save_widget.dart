import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/save/widget/save_item_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SaveWidget extends StatelessWidget {
  const SaveWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.w, right: 8.w, left: 8.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0.w,
                crossAxisSpacing: 8.0.w,
                children: [
                  for (int i = 0; i < 10; i++)
                    SaveItemWidget(
                      onTap: () {},
                    )
                ],
              ),
            ],
          ),
        ));
  }
}
