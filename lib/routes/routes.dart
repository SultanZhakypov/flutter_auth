import 'package:auto_route/auto_route.dart';
import 'package:flutter_authorization/screens/home_screen.dart';
import 'package:flutter_authorization/screens/login_screen.dart';
import 'package:flutter_authorization/screens/sms_screen.dart';
import 'package:flutter_authorization/screens/splash_screen.dart';
export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginScreen,
      path: '/login',
    ),
    AutoRoute(
      page: SmsScreen,
      path: '/sms',
    ),
    AutoRoute(
      page: HomeScreen,
      path: '/home',
    ),
    AutoRoute(
      initial: true,
      page: SplashScreen,
      path: '/',
    ),
  ],
)
class $AppRouter {}
