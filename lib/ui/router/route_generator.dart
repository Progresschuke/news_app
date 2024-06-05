import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/ui/router/page_slide_transition.dart';

import '../views/details/screens/details.dart';
import '../views/home/screens/home.dart';
import '../views/splash/screens/splash.dart';
import 'route_constants.dart';

class RouteGenerator {
  static dynamic route() {
    return {
      'SplashPage': (BuildContext context) => const SplashScreen(),
    };
  }

  static Route onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Return to previous page..'),
        ),
      ),
    );
  }

  static Route<dynamic> appRoutes(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case RouteList.inital:
        return PageSlideTransition(
          page: (context) => SplashScreen(),
          settings: RouteSettings(name: RouteList.inital),
        );

      case RouteList.homeScreen:
        return PageSlideTransition(
          page: (context) => HomeScreen(),
          settings: RouteSettings(name: RouteList.homeScreen),
        );
      case RouteList.detailsScreen:
        return PageSlideTransition(
          page: (context) => DetailsScreen(
            content: arguments as NewsModel,
          ),
          settings: RouteSettings(name: RouteList.detailsScreen),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const SplashScreen(),
    );
  }
}
