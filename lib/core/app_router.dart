import 'package:chat_gpt/core/untils/routes/route_name.dart';
import 'package:chat_gpt/core/untils/routes/route_path.dart';
import 'package:chat_gpt/page/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../page/splash/view/splash.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: RoutePath.splash,
    routes: <GoRoute>[
      GoRoute(
        path: RoutePath.splash,
        name: RouteName.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: RoutePath.homePage,
        name: RouteName.homePage,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
    ],
  );
}
