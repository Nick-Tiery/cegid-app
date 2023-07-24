import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.blue,
    highlightColor: Colors.transparent,
    splashColor: AppColors.blue,
    dividerColor: Colors.transparent,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoWillPopScopePageTransionsBuilder(),
      },
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.blue,
    ),
  );
}
