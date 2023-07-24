import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../data/models/work_detail/work_detail_model.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';
import '../../widgets/icon_generic.dart';
import '../../widgets/will_pop_scope_generic.dart';
import 'widgets/pop_up_start_work.dart';

class StartWorkPage extends StatefulWidget {
  final WorkDetailModel? workDetail;

  const StartWorkPage({
    this.workDetail,
    Key? key,
  }) : super(key: key);

  @override
  State<StartWorkPage> createState() => _WorkDetailPageState();
}

class _WorkDetailPageState extends State<StartWorkPage> {
  final RxBool _showPopUpStartWork = true.obs;
  late WorkDetailModel? _workDetail;
  late NavigatorState _navigator;

  @override
  void initState() {
    super.initState();
    _navigator = Navigator.of(context);
    _workDetail = widget.workDetail;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeGeneric(
      onWillPop: true,
      action: _goBack,
      child: Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.blue,
          selectedFontSize: 0,
          currentIndex: 2,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.warehouse_rounded,
                color: AppColors.white,
                size: 30.w,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.file_copy_outlined,
                color: AppColors.white,
                size: 30.w,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.orange,
                ),
                child: Padding(
                  padding: EdgeInsets.all(6.w),
                  child: Icon(
                    Icons.check_rounded,
                    color: AppColors.white,
                    size: 30.w,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.picture_in_picture_alt_outlined,
                color: AppColors.white,
                size: 30.w,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.list_rounded,
                color: AppColors.white,
                size: 30.w,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Obx(
            () => Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0.h,
                      ),
                      _header(),
                      SizedBox(
                        height: 15.0.h,
                      ),
                      _startWorkBody(),
                      SizedBox(
                        height: 10.0.h,
                      ),
                    ],
                  ),
                ),
                if (_showPopUpStartWork.value)
                  PopUpStartWork(
                    goConfirm: _confirmTimeFromPopUpStartWork,
                    goModify: _goModifyFromPopUpStartWork,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        IconGeneric(
          highlightColor: AppColors.grey.withOpacity(0.1),
          padding: EdgeInsets.zero,
          onPressedCallback: _goBack,
          color: AppColors.blue,
          size: 20.0.w,
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Text(
          'Resumen trabajo'.toUpperCase(),
          textAlign: TextAlign.center,
          style: AppStyles.appStyleTextServiceClientWorkDetail,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        SizedBox(
          width: 20.0.w,
        ),
      ],
    );
  }

  Widget _startWorkBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              'No Checkeados',
              textAlign: TextAlign.center,
              style: AppStyles.appStyleTextServiceClientWorkDetail,
            ),
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              height: 20.h,
              child: VerticalDivider(
                color: AppColors.orange,
                width: 1.w,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Checkeados',
              textAlign: TextAlign.center,
              style: AppStyles.appStyleTextServiceClientWorkDetail,
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        _noChecked(),
        SizedBox(
          height: 10.h,
        ),
        _checked(),
      ],
    );
  }

  Widget _noChecked() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Row(
            children: [
              Text(
                'NO CHECKEADOS',
                textAlign: TextAlign.center,
                style: AppStyles.appStyleTextTitleEquipment,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                'Ver Todos',
                textAlign: TextAlign.center,
                style: AppStyles.appStyleTextServiceClientWorkDetail,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SizedBox(
            height: 240.h,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              crossAxisCount: 3,
              children: <Widget>[
                _noCheckedButton('8', 'Extintores', 'ABC 6Kg'),
                _noCheckedButton('3', 'Extintores', 'CO2 5Kg'),
                _noCheckedButton('1', 'Extintor', 'CO2 3kg'),
                _noCheckedButton('5', 'BIES', 'Datos'),
                _noCheckedButton('4', 'Puertas RF', 'Datos'),
                _noCheckedButton('2', 'Espumógenos', 'Datos'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _checked() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Row(
            children: [
              Text(
                'CHECKEADOS',
                textAlign: TextAlign.center,
                style: AppStyles.appStyleTextTitleEquipment,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                'Ver Todos',
                textAlign: TextAlign.center,
                style: AppStyles.appStyleTextServiceClientWorkDetail,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SizedBox(
            height: 240.h,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              crossAxisCount: 3,
              children: <Widget>[
                _checkedButton('2', 'Extintores', 'ABC 6Kg'),
                _checkedButton('0', 'Extintores', 'CO2 5Kg'),
                _checkedButton('0', 'Extintor', 'CO2 3kg'),
                _checkedButton('2', 'BIES', 'Datos'),
                _checkedButton('1', 'Puertas RF', 'Datos'),
                _checkedButton('0', 'Espumógenos', 'Datos'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _noCheckedButton(String number, String type, String description) {
    return Container(
      width: 100.0.w,
      height: 100.0.w,
      decoration: BoxDecoration(
        color: AppColors.greyUltraLight,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextTitleEquipmentNumber,
          ),
          Text(
            type,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextServiceClientWorkDetail,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextOptionsRules,
          ),
        ],
      ),
    );
  }

  Widget _checkedButton(String number, String type, String description) {
    return Container(
      width: 100.0.w,
      height: 100.0.w,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextTitleEquipmentNumberChecked,
          ),
          Text(
            type,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextTitleEquipmentChecked,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.appStyleTextTitleEquipmentChecked,
          ),
        ],
      ),
    );
  }

  Future<void> _goBack() async {
    _navigator.pop();
  }

  void _confirmTimeFromPopUpStartWork() {
    _goModifyFromPopUpStartWork();
  }

  void _goModifyFromPopUpStartWork() {
    _showPopUpStartWork(false);
  }
}
