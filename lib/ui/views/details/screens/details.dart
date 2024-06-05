import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/consts/app_colors.dart';
import 'package:news_app/model/news_model.dart';

import '../../../../common/common_widgets.dart';
import '../../../../consts/app_images.dart';
import '../widgets/details_icon.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.content});

  final NewsModel content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
            child: Column(
              children: [
                Container(
                  height: 350.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          content.image!,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                5.verticalSpace,
                Row(
                  children: [
                    DetailsIcon(
                      text: content.views!,
                      icon: AppImages.viewsIcon,
                    ),
                    10.horizontalSpace,
                    DetailsIcon(
                      text: content.comment!,
                      icon: AppImages.commentIcon,
                    ),
                  ],
                ),
                30.verticalSpace,
                Text(
                  content.title!,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                25.verticalSpace,
                Text(
                  content.subtitle!,
                  style: TextStyle(fontSize: 16.sp, color: AppColors.grey1),
                ),
                30.verticalSpace,
                Text(
                  content.description!,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ));
  }
}
