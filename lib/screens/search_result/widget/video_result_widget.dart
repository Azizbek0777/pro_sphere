import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/screens/search_result/widget/video_result_item_widget.dart';

import '../../../utils/style/colors.dart';
import 'all_result_item_widget.dart';

class VideoResultWidget extends StatelessWidget {
  const VideoResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 20.h,
            ),
            for(int i=0;i<10;i++)
              VideoResultItemWidget(
                onTapMenu: () {},
                onTap: () {},
                title: "Google",
                description:
                "Google LLC (МФА [ɡuːɡl], MWCD /ˈgü-gəl/, по-русски: «Гугл») — транснациональная корпорация из США в составе холдинга Alphabet, инвестирующая в транснациональная корпорация из СШ",
                descTitle: "Google (компания)",
                link: "https://ru.wikipedia.org › wiki › Google_(компания)",
              )
          ],
        ),
      ),
    );
  }
}
