import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_sphere/screens/search/widget/popular_queries_item_widget.dart';

class PopularQueriesWidget extends StatelessWidget {
  final String title;
  const PopularQueriesWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        for(int i =0;i<10;i++)
        PopularQueriesItemWidget(
          title: "Переводчик",
          onTap: () {},
        ),
      ],
    );
  }
}
