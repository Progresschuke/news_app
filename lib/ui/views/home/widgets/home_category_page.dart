import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/app_colors.dart';
import '../../../../data/dummy_data.dart';

class HomeCategoryPage extends StatelessWidget {
  const HomeCategoryPage({
    super.key,
    required this.isSelected,
    required this.index,
  });

  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          padding: EdgeInsets.only(left: 0, right: 15, top: 10, bottom: 0),
          margin: EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          height: 30.h,
          width: 83,
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(
                  fontSize: 12.sp,
                  color: isSelected ? AppColors.primaryBlue : AppColors.grey1),
            ),
          ),
        ),
        Visibility(
          visible: isSelected,
          child: Padding(
            padding: EdgeInsets.only(left: 36, top: 8.h),
            child: Container(
              height: 2.h,
              width: 5.w,
              color: AppColors.primaryRed,
            ),
          ),
        )
      ],
    );
  }
}
