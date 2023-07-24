import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppDecorations {
  static final BoxDecoration boxDecorationWorkDetail = BoxDecoration(
    color: AppColors.greyUltraLight,
    borderRadius: BorderRadius.circular(20.0.r),
    boxShadow: [
      BoxShadow(
        color: AppColors.grey.withOpacity(0.5),
        blurRadius: 7,
        offset: const Offset(0, 3.0),
      ),
    ],
  );

  static final BoxDecoration boxDecorationGreenWorkDetail = BoxDecoration(
    color: AppColors.greenItem,
    borderRadius: BorderRadius.circular(20.0.r),
    boxShadow: const [
      BoxShadow(
        color: AppColors.grey,
        blurRadius: 7,
        offset: Offset(0, 3.0),
      ),
    ],
  );

  static final BoxDecoration boxDecorationRedWorkDetail = BoxDecoration(
    color: AppColors.redItem,
    borderRadius: BorderRadius.circular(20.0.r),
    boxShadow: const [
      BoxShadow(
        color: AppColors.grey,
        blurRadius: 7,
        offset: Offset(0, 3.0),
      ),
    ],
  );

  static final BoxDecoration boxDecorationHeaderWorkDetail = BoxDecoration(
    color: AppColors.blue,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(30.0.r),
      bottomRight: Radius.circular(30.0.r),
    ),
  );

  static const BoxDecoration boxDecorationUserHeaderWorkDetail = BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.greyUltraLight,
  );

  static final BoxDecoration boxDecorationWorkDetailPeriodicity = BoxDecoration(
    color: AppColors.greyUltraLight,
    borderRadius: BorderRadius.circular(10.0.r),
    boxShadow: [
      BoxShadow(
        color: AppColors.grey.withOpacity(0.5),
        blurRadius: 7,
        offset: const Offset(0, 3.0),
      ),
    ],
  );

  static final BoxDecoration boxDecorationInitWorkPopUp = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(50.0.r),
    boxShadow: [
      BoxShadow(
        color: AppColors.grey.withOpacity(0.5),
        blurRadius: 7,
        offset: const Offset(0, 3.0),
      ),
    ],
  );
}
