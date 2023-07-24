import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import 'app/resources/app_themes.dart';
import 'app/routes/app_route_provider.dart';
import 'app/routes/app_routes.dart';
import 'app/widgets/loader_generic.dart';
import 'data/services/controller.dart';
import 'dependency_injection/injection.dart';
import 'generated/l10n.dart';

void main() async {
  await runZonedGuarded(() async {
    Injection.loadDependencies();

    runApp(
      GestionRemotaApp(
        appRouteProvider: AppRouteProvider(),
      ),
    );
  }, (error, stackTrace) {
    debugPrint('$error');
  });
}

class GestionRemotaApp extends StatefulWidget {
  final AppRouteProvider _appRouteProvider;

  const GestionRemotaApp({
    super.key,
    required AppRouteProvider appRouteProvider,
  }) : _appRouteProvider = appRouteProvider;

  @override
  State<GestionRemotaApp> createState() => _GestionRemotaAppState();
}

class _GestionRemotaAppState extends State<GestionRemotaApp> {
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    return ScreenUtilInit(
      designSize: const Size(360.0, 640.0),
      builder: (context, _) => GetMaterialApp(
        title: 'Gestiona3w',
        builder: (context, child) {
          final MediaQueryData data = MediaQuery.of(context);

          return MediaQuery(
            data: data.copyWith(
              textScaleFactor:
                  min(max(1, MediaQuery.textScaleFactorOf(context)), 1.5),
            ),
            child: Obx(
              () => LoaderGeneric(
                isLoading: _controller.isLoading.value,
                child: child ?? const SizedBox(),
              ),
            ),
          );
        },
        debugShowCheckedModeBanner: false,
        theme: AppThemes.appTheme,
        initialRoute: AppRoutes.root,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        navigatorObservers: [
          HeroController(),
        ],
        navigatorKey: AppRouteProvider.navigatorKey,
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: widget._appRouteProvider.generateRoute,
      ),
    );
  }
}
