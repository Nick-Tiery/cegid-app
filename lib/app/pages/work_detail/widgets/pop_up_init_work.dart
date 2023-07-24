import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../data/models/work_detail/rules_model.dart';
import '../../../../generated/l10n.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_decorations.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/button_generic.dart';

class PopUpInitWork extends StatelessWidget {
  final RxList<bool> listRulesChecked;
  final List<RulesModel> listRules;
  final Function() goBack;
  final Function() goWork;

  const PopUpInitWork({
    super.key,
    required this.listRulesChecked,
    required this.listRules,
    required this.goBack,
    required this.goWork,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Container(
            height: 640.0.h,
            width: 360.0.w,
            color: AppColors.black.withOpacity(0.3),
          ),
          Center(
            child: Container(
              width: 310.0.w,
              height: 500.0.h,
              decoration: AppDecorations.boxDecorationInitWorkPopUp,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.0.h,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus, nulla ut '
                      'commodo sagittis, sapien dui mattis dui, non pulvinar lorem felis nec erat',
                      style: AppStyles.appStyleTextTitleRules,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    SizedBox(
                      height: 135.0.h,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            for (RulesModel rule in listRules)
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: listRules.indexOf(rule) ==
                                          listRules.length - 1
                                      ? 10.0.h
                                      : 25.0.h,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 24.0.h,
                                      width: 24.0.w,
                                      child: Checkbox(
                                        checkColor: AppColors.white,
                                        fillColor: MaterialStateProperty.all(
                                            AppColors.blue),
                                        value: listRulesChecked[
                                            listRules.indexOf(rule)],
                                        onChanged: (bool? value) {
                                          listRulesChecked[
                                                  listRules.indexOf(rule)] =
                                              !listRulesChecked[
                                                  listRules.indexOf(rule)];
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0.w,
                                    ),
                                    SizedBox(
                                      width: 190.0.w,
                                      child: Text(
                                        '${rule.textoNorma}',
                                        style:
                                            AppStyles.appStyleTextOptionsRules,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    ButtonGeneric(
                      onPressedCallback: listRulesChecked
                              .where((item) => item == false)
                              .isEmpty
                          ? goWork
                          : () {},
                      textStyle: AppStyles.appStyleButton,
                      text: S.current.go_to_work,
                      color: listRulesChecked
                              .where((item) => item == false)
                              .isEmpty
                          ? AppColors.orange
                          : AppColors.orange.withOpacity(0.3),
                      borderRadius: 5.0.r,
                      width: 220.0.w,
                      height: 40.0.h,
                      padding: 0,
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    ButtonGeneric(
                      text: S.current.back,
                      textStyle: AppStyles.appStyleButton,
                      onPressedCallback: goBack,
                      width: 220.0.w,
                      color: AppColors.blue,
                      borderRadius: 5.0.r,
                      padding: 0,
                      height: 40.0.h,
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
      ),
    );
  }
}
