// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../screens/home_screen.dart' as _i3;
import '../screens/login_screen.dart' as _i1;
import '../screens/sms_screen.dart' as _i2;
import '../screens/splash_screen.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    SmsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SmsScreenRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SmsScreen(key: args.key, token: args.token));
    },
    HomeScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    SplashScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SplashScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginScreenRoute.name, path: '/login'),
        _i5.RouteConfig(SmsScreenRoute.name, path: '/sms'),
        _i5.RouteConfig(HomeScreenRoute.name, path: '/home'),
        _i5.RouteConfig(SplashScreenRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: '/login');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.SmsScreen]
class SmsScreenRoute extends _i5.PageRouteInfo<SmsScreenRouteArgs> {
  SmsScreenRoute({_i6.Key? key, required String token})
      : super(SmsScreenRoute.name,
            path: '/sms', args: SmsScreenRouteArgs(key: key, token: token));

  static const String name = 'SmsScreenRoute';
}

class SmsScreenRouteArgs {
  const SmsScreenRouteArgs({this.key, required this.token});

  final _i6.Key? key;

  final String token;

  @override
  String toString() {
    return 'SmsScreenRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}
