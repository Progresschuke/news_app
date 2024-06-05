import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/app_colors.dart';
import '../../../../model/news_model.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({super.key, required this.content});

  final NewsModel content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        color: Colors.black,
        elevation: 1,
        child: Column(
          children: [
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        content.image!,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r))),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r))),
              height: 70.h,
              child: Text(
                content.headline!,
                style: TextStyle(fontSize: 16.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
