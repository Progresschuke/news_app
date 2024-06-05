import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_colors.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
  final GestureTapCallback onTap;
  final bool isSelected;
  final String icon;
  final String selectedIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 23.h,
            child: SvgPicture.asset(
              isSelected ? selectedIcon : icon,
              colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.black : AppColors.grey1,
                  BlendMode.srcIn),
            ),
          ),
          3.verticalSpace,
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? AppColors.black : AppColors.grey1,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
