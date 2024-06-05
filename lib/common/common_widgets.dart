import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/consts/app_colors.dart';

import '../consts/app_images.dart';

buildAppBar() {
  return AppBar(
    leading: Container(
      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 20),
      child: SvgPicture.asset(
        AppImages.menuIcon,
        fit: BoxFit.fitHeight,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
        child: SvgPicture.asset(AppImages.notificationIcon),
      )
    ],
  );
}

class InputFormBox extends StatelessWidget {
  const InputFormBox({
    super.key,
    this.hintText,
    this.textInputType,
    this.minLines,
    this.maxLines,
    this.suffixIcon,
    this.prefixIcon,
    this.helperText,
  });

  final String? hintText;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: 100 * size.width / 100,
      child: TextField(
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconColor: AppColors.primaryBlue,
          suffixIconColor: AppColors.primaryBlue,
          helperText: helperText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(color: AppColors.primaryBlue, width: 1.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: AppColors.primaryBlue, width: 1.w),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
          ),
          filled: true,
          fillColor: AppColors.white,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }
}
