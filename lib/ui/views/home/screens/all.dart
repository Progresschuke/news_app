import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/common_widgets.dart';
import '../../../../data/dummy_data.dart';
import '../../../router/route_constants.dart';
import '../widgets/news_card.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InputFormBox(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),
          ),
          30.verticalSpace,
          Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: newsList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 1.h,
                mainAxisExtent: 264,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, RouteList.detailsScreen,
                      arguments: newsList[index]),
                  child: NewsCardWidget(
                    content: newsList[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
