import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../resources/app_colors.dart';

class LoaderGeneric extends StatelessWidget {
  const LoaderGeneric({
    required this.child,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0.w,
      height: 640.0.h,
      child: Stack(
        children: [
          Container(
            child: child,
          ),
          if (isLoading)
            Container(
              decoration: BoxDecoration(
                color: AppColors.blueLight.withOpacity(0.3),
              ),
              child: Center(
                child: Lottie.asset(
                  'assets/lotties/loader.json',
                  width: 100.0.w,
                  height: 100.0.h,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
