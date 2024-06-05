import 'package:flutter/material.dart';
import 'package:news_app/ui/views/home/screens/home_handler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var duration = const Duration(seconds: 3);
    Future.delayed(duration, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomeHandlerScreen();
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Center(
        child: SizedBox(
          height: 183.h,
          width: 215.w,
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
