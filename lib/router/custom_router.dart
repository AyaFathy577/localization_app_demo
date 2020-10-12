import 'package:flutter/material.dart';
import 'package:localization_app_demo/pages/about_page.dart';
import 'package:localization_app_demo/pages/home_page.dart';
import 'package:localization_app_demo/pages/not_found_page.dart';
import 'package:localization_app_demo/pages/profile_page.dart';
import 'package:localization_app_demo/pages/settings_page.dart';
import 'package:localization_app_demo/pages/splash_page.dart';
import 'package:localization_app_demo/router/route_constants.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case profileRoute:
        return MaterialPageRoute(builder: (_)=> ProfilePage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}