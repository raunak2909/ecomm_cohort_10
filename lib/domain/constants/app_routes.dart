import 'package:flutter/cupertino.dart';

import '../../ui/dashboard/dashboard_page.dart';
import '../../ui/splash/splash_page.dart';
import '../../ui/user_on_boarding/pages/login_page.dart';
import '../../ui/user_on_boarding/pages/sign_up_page.dart';

class AppRoutes {

  static const String PAGE_SPLASH = "/";
  static const String PAGE_LOGIN = "/login";
  static const String PAGE_SIGN_UP = "/sign_up";
  static const String PAGE_DASHBOARD = "/dashboard";

  static Map<String, WidgetBuilder> getRoutes() => {
    PAGE_SPLASH: (context) => SplashPage(),
    PAGE_LOGIN: (context) => LoginPage(),
    PAGE_SIGN_UP: (context) => SignUpPage(),
    PAGE_DASHBOARD: (context) => DashboardPage(),
  };

}