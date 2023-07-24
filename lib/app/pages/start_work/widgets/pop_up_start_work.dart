import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_decorations.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/button_generic.dart';

class PopUpStartWork extends StatelessWidget {
  final Function() goConfirm;
  final Function() goModify;

  const PopUpStartWork({
    super.key,
    required this.goConfirm,
    required this.goModify,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 640.0.h,
          width: 360.0.w,
          color: AppColors.black.withOpacity(0.3),
        ),
        Center(
          child: Container(
            width: 310.0.w,
            height: 260.0.h,
            decoration: AppDecorations.boxDecorationInitWorkPopUp,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.0.h,
                  ),
                  Text(
                    'Llevas un desplazamiento de:',
                    style: AppStyles.appStyleTextTitleRules,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Text(
                    '23 min',
                    style: AppStyles.appStyleTextTitleRules,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonGeneric(
                        text: 'Confirmar',
                        textStyle: AppStyles.appStyleButton,
                        onPressedCallback: goConfirm,
                        width: 100.0.w,
                        color: AppColors.orange,
                        borderRadius: 5.0.r,
                        padding: 0,
                        height: 40.0.h,
                      ),
                      SizedBox(
                        width: 20.0.h,
                      ),
                      ButtonGeneric(
                        text: 'Modificar',
                        textStyle: AppStyles.appStyleButton,
                        onPressedCallback: goModify,
                        width: 100.0.w,
                        color: AppColors.blue,
                        borderRadius: 5.0.r,
                        padding: 0,
                        height: 40.0.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
