import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_sphere/screens/search/widget/popular_queries_item_widget.dart';
import 'package:pro_sphere/screens/search/widget/sfere_offer_item_widget.dart';

class SfereOfferWidget extends StatelessWidget {
  final String title;

  const SfereOfferWidget({super.key,required this.title});

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
          SfereOfferItemWidget(
            title: "Переводчик",
            onTap: () {},
          ),
      ],
    );
  }
}
