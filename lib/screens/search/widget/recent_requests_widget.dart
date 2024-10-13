import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/search/widget/recent_request_item_widget.dart';

class RecentRequestsWidget extends StatelessWidget {
  final VoidCallback onTapClearAll;
  final String title;

  const RecentRequestsWidget({
    super.key,
    required this.onTapClearAll,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Недавние запросы",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTapClearAll,
              child: Text(
                "Очистить все",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: 17.sp,
                    ),
              ),
            ),
          ],
        ),
        for (int i = 0; i < 10; i++)
          RecentRequestItemWidget(
            title: "Атака титанов смотреть ",
            onTapClose: () {},
            onTap: () {
              Navigator.pushNamed(context, RouteList.searchResult);
            },
          )
      ],
    );
  }
}
