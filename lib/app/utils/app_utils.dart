import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';

import '../../generated/l10n.dart';
import '../resources/app_colors.dart';
import '../widgets/icon_generic.dart';

class AppUtils {
  static void showError(String? error) {
    Get.snackbar(
      S.current.error_title,
      '$error',
      margin: EdgeInsets.all(20.0.w),
      snackPosition: SnackPosition.BOTTOM,
      colorText: AppColors.white,
      backgroundColor: AppColors.blueLight,
      icon: IconGeneric(
        highlightColor: AppColors.transparent,
        onPressedCallback: () {},
        padding: EdgeInsets.zero,
        color: AppColors.white,
        size: 25.0.w,
        icon: const Icon(Icons.error),
      ),
    );
  }

  static String getDayMonthFormat(int day, int month, int year) {
    return DateFormat('EEEE, dd MMMM', 'es_ES')
        .format(DateTime(year, month, day));
  }
}
