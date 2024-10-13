import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_sphere/route/route_constants.dart';
import 'package:pro_sphere/screens/search/widget/recent_request_item_widget.dart';

class HistoryWidget extends StatelessWidget {
  final VoidCallback onTapClearAll;
  final String dateTime;

  const HistoryWidget({
    super.key,
    required this.onTapClearAll,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateTime,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(height: 5.h),
          for(int i =0;i<5;i++)
          RecentRequestItemWidget(
            title: "Атака титанов смотреть ",
            onTapClose: () {},
            onTap: () {
              Navigator.pushNamed(context, RouteList.searchResult);
            },
          )
        ],
      ),
    );
  }
}
