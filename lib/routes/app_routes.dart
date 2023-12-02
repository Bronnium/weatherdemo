import 'package:flutter/material.dart';
import 'package:lucas_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:lucas_s_application2/presentation/weather_search_add_screen/weather_search_add_screen.dart';
import 'package:lucas_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String weatherSearchAddScreen = '/weather_search_add_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeContainerScreen: HomeContainerScreen.builder,
        weatherSearchAddScreen: WeatherSearchAddScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeContainerScreen.builder
      };
}
