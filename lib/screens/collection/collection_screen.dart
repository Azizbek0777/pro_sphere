import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pro_sphere/main.dart';
import 'package:pro_sphere/screens/collection/widget/collection_bottom_sheet.dart';
import 'package:pro_sphere/screens/collection/widget/pro_item_widget.dart';

import '../../utils/style/colors.dart';
import '../widget/custom_app_bar.dart';

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
      appBar: customAppBar(
        context: context,
        onTapCloseOrAccount: () {},
        title: 'Сервисы',
        isAccountIcon: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 8.w,
                right: 8.w,
                top: 8.h,
                bottom: 8.h,
              ),
              color: AppColors.cF5F6F7,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0.w,
                  crossAxisSpacing: 8.0.w,
                  children: [
                    for (int i = 0; i < 13; i++)
                      ProItemWidget(
                        index: i + 1,
                        title: 'Cheeff',
                        onTap: () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withOpacity(0.5),
                            isScrollControlled: true,
                            backgroundColor: AppColors.transparent,
                            // barrierColor: AppColors.transparent,
                            context: context,
                            builder: (context) => const CollectionBottomSheet(),
                          );
                        },
                      )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
