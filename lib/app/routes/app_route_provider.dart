import 'dart:developer';
import 'package:flutter/material.dart';

import '../../data/models/work_detail/work_detail_model.dart';
import '../pages/collaborator/collaborator_page.dart';
import '../pages/login_initial/login_initial_page.dart';
import '../pages/login_token/login_token_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/start_work/start_work_page.dart';
import '../pages/work_detail/work_detail_page.dart';
import '../routes/app_routes.dart';
import '../widgets/fade_page_route.dart';

class AppRouteProvider {
  AppRouteProvider() : super();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static NavigatorState get navigate {
    return navigatorKey.currentState!;
  }

  PageRoute generateRoute(RouteSettings settings) {
    dynamic page;
    final String path = settings.name ?? "";
    String name = '';

    switch (path) {
      case AppRoutes.root:
        name = 'root';
        page = MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: settings,
        );

        break;
      case AppRoutes.loginInitial:
        name = 'loginInitial';
        page = FadePageRoute(
          page: const LoginInitialPage(),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      case AppRoutes.loginToken:
        name = 'loginToken';
        page = FadePageRoute(
          page: const LoginTokenPage(),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      case AppRoutes.profile:
        name = 'profile';
        page = FadePageRoute(
          page: const ProfilePage(),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      case AppRoutes.work_detail:
        name = 'workDetail';
        page = FadePageRoute(
          page: WorkDetailPage(
            workDetail: settings.arguments as WorkDetailModel?,
          ),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      case AppRoutes.collaborator:
        name = 'collaborator';
        page = FadePageRoute(
          page: const CollaboratorPage(),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      case AppRoutes.start_work:
        name = 'startWork';
        page = FadePageRoute(
          page: StartWorkPage(
            workDetail: settings.arguments as WorkDetailModel?,
          ),
          duration: const Duration(
            milliseconds: 800,
          ),
        );
        break;
      default:
        page = MaterialPageRoute(builder: (context) => Container());
    }

    log(name, name: "route_provider");
    return page;
  }
}
