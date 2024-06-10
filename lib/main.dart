// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'consts/app_colors.dart';
// import 'ui/router/route_generator.dart';

// var appScaffoldKey = GlobalKey<NavigatorState>();
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(375.0, 812.0),
//       builder: (context, child) => MaterialApp(
//         navigatorKey: appScaffoldKey,
//         debugShowCheckedModeBanner: false,
//         routes: RouteGenerator.route(),
//         onGenerateRoute: RouteGenerator.appRoutes,
//         onUnknownRoute: RouteGenerator.onUnknownRoute,
//         initialRoute: 'SplashPage',
//         theme: ThemeData(
//           colorScheme:
//               ColorScheme.fromSeed(seedColor: AppColors.appBackgroundColor),
//           useMaterial3: true,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/provider/home_provider.dart';
import 'package:provider/provider.dart';

import 'consts/app_colors.dart';
import 'ui/router/route_generator.dart';

var appScaffoldKey = GlobalKey<NavigatorState>();
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => HomeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: (context, child) => MaterialApp(
        navigatorKey: appScaffoldKey,
        debugShowCheckedModeBanner: false,
        routes: RouteGenerator.route(),
        onGenerateRoute: RouteGenerator.appRoutes,
        onUnknownRoute: RouteGenerator.onUnknownRoute,
        initialRoute: 'SplashPage',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppColors.appBackgroundColor),
          useMaterial3: true,
        ),
      ),
    );
  }
}
