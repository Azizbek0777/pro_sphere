import 'package:flutter/cupertino.dart';
import 'package:pro_sphere/screens/save/widget/history_widget.dart';

class HistoryScrollWidget extends StatelessWidget {
  const HistoryScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          for(int i=0 ;i <10;i++)
          HistoryWidget(onTapClearAll: (){}, dateTime: "title")
        ],
      ),
    );
  }
}
