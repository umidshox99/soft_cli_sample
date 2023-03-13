import 'package:flutter/material.dart';
import '../ui/main/main_page.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        Routes.main: (_) => const MainPage(),
      };
}
