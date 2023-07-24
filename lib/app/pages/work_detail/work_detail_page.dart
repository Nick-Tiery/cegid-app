import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../data/models/work/service_model.dart';
import '../../../data/models/work/work_model.dart';
import '../../../data/models/work_detail/admin_model.dart';
import '../../../data/models/work_detail/customer_model.dart';
import '../../../data/models/work_detail/periodicity_model.dart';
import '../../../data/models/work_detail/rules_model.dart';
import '../../../data/models/work_detail/summary_equipment_model.dart';
import '../../../data/models/work_detail/work_detail_model.dart';
import '../../../domain/entities/work_detail/admin.dart';
import '../../../generated/l10n.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_decorations.dart';
import '../../resources/app_styles.dart';
import '../../routes/app_routes.dart';
import '../../utils/app_utils.dart';
import '../../widgets/button_generic.dart';
import '../../widgets/icon_generic.dart';
import '../../widgets/will_pop_scope_generic.dart';
import 'widgets/pop_up_init_work.dart';

class WorkDetailPage extends StatefulWidget {
  final WorkDetailModel? workDetail;

  const WorkDetailPage({
    this.workDetail,
    Key? key,
  }) : super(key: key);

  @override
  State<WorkDetailPage> createState() => _WorkDetailPageState();
}

class _WorkDetailPageState extends State<WorkDetailPage> {
  final RxList<RulesModel> _listRules = <RulesModel>[].obs;
  final RxBool _showPopUpInitWork = false.obs;
  late WorkDetailModel? _workDetail;
  late NavigatorState _navigator;

  @override
  void initState() {
    super.initState();
    _navigator = Navigator.of(context);
    _workDetail = widget.workDetail;
    for (Map<String, dynamic> rule in _workDetail!.listRules!) {
      _listRules.add(RulesModel.fromJson(rule));
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeGeneric(
      onWillPop: true,
      action: _goBack,
      child: Scaffold(
        backgroundColor: AppColors.white,
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
                        height: 20.0.h,
                      ),
                      _tabs(),
                    ],
                  ),
                ),
                if (_showPopUpInitWork.value)
                  PopUpInitWork(
                    listRulesChecked: List<bool>.filled(
                      _listRules.length,
                      false,
                      growable: true,
                    ).obs,
                    goWork: _initWorkFromPopUpInitWork,
                    goBack: _goBackFromPopUpInitWork,
                    listRules: _listRules,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    WorkModel work = WorkModel.fromJson(_workDetail!.work!);
    ServiceModel service = ServiceModel.fromJson(_workDetail!.service!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
              S.current.work,
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
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                '${work.idTrabajo}',
                textAlign: TextAlign.start,
                style: AppStyles.appStyleTextWorkDetailIndex,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                _getType(work),
                textAlign: TextAlign.start,
                style: AppStyles.appStyleTextGreyWorkDetailIndex,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                work.tipoMantenimientoTrabajo!,
                textAlign: TextAlign.start,
                style: AppStyles.appStyleTextWorkDetailIndex,
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  service.nombreServicio!,
                  textAlign: TextAlign.start,
                  style: AppStyles.appStyleTextServiceClientWorkDetailIndex,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  service.direccion!,
                  textAlign: TextAlign.start,
                  style: AppStyles.appStyleTextGreyWorkDetailIndex,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  service.poblacion!,
                  textAlign: TextAlign.start,
                  style: AppStyles.appStyleTextGreyWorkDetailIndex,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  service.codpostal!,
                  textAlign: TextAlign.start,
                  style: AppStyles.appStyleTextGreyWorkDetailIndex,
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                children: [
                  _actionButton(
                    Icons.phone,
                    () {},
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  _actionButton(
                    Icons.attach_file_rounded,
                    () {},
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  _actionButton(
                    Icons.car_crash_rounded,
                    () {},
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  _actionButton(
                    Icons.map_rounded,
                    () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonGeneric(
                    text: S.current.init_work,
                    textStyle: AppStyles.appStyleButtonWorkDetail,
                    onPressedCallback: _initWork,
                    width: 100.0.w,
                    color: AppColors.orange,
                    borderRadius: 5.0.r,
                    padding: 0,
                    height: 45.0.h,
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  ButtonGeneric(
                    text: S.current.see_equipment,
                    textStyle: AppStyles.appStyleButtonWorkDetail,
                    onPressedCallback: () {},
                    width: 100.0.w,
                    color: AppColors.blue,
                    borderRadius: 5.0.r,
                    padding: 0,
                    height: 45.0.h,
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  ButtonGeneric(
                    text: S.current.move,
                    textStyle: AppStyles.appStyleButtonWorkDetail,
                    onPressedCallback: () {},
                    width: 100.0.w,
                    color: AppColors.blue,
                    borderRadius: 5.0.r,
                    padding: 0,
                    height: 45.0.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabs() {
    return DefaultTabController(
      length: _workDetail!.admin == null ? 5 : 6,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            tabs: [
              Tab(
                child: Text(
                  S.current.work,
                  textAlign: TextAlign.center,
                  style: AppStyles.appStyleTextServiceClientWorkDetail,
                ),
              ),
              Tab(
                child: Text(
                  S.current.service,
                  textAlign: TextAlign.center,
                  style: AppStyles.appStyleTextServiceClientWorkDetail,
                ),
              ),
              Tab(
                child: Text(
                  S.current.periodicity,
                  textAlign: TextAlign.center,
                  style: AppStyles.appStyleTextServiceClientWorkDetail,
                ),
              ),
              Tab(
                child: Text(
                  S.current.summary_equipment,
                  textAlign: TextAlign.center,
                  style: AppStyles.appStyleTextServiceClientWorkDetail,
                ),
              ),
              if (_workDetail!.admin != null)
                Tab(
                  child: Text(
                    S.current.admin,
                    textAlign: TextAlign.center,
                    style: AppStyles.appStyleTextServiceClientWorkDetail,
                  ),
                ),
              Tab(
                child: Text(
                  S.current.customer,
                  textAlign: TextAlign.center,
                  style: AppStyles.appStyleTextServiceClientWorkDetail,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 350.0.h,
            child: TabBarView(
              children: [
                _tabsBodyWork(),
                _tabsBodyService(),
                Column(
                  children: [
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Expanded(
                      child: _tabsBodyPeriodicity(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Expanded(
                      child: _tabsBodySummaryEquipment(),
                    ),
                  ],
                ),
                if (_workDetail!.admin != null) _tabsBodyAdmin(),
                _tabsBodyCustomer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(IconData iconData, Function() onPressedCallback) {
    return Container(
      width: 40.0.w,
      height: 40.0.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orange,
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3.0),
          ),
        ],
      ),
      child: IconGeneric(
        highlightColor: AppColors.grey.withOpacity(0.1),
        padding: EdgeInsets.zero,
        onPressedCallback: onPressedCallback,
        color: AppColors.white,
        size: 20.0.w,
        icon: Icon(iconData),
      ),
    );
  }

  Widget _tabsBodyWork() {
    WorkModel work = WorkModel.fromJson(_workDetail!.work!);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0.h,
          ),
          Text(
            '${S.current.company}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            S.current.app_company,
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.created_date}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            work.fechaCreacion!.isNotEmpty ? '${work.fechaCreacion}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.estimated_time}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            "${work.tiempoEstimado}”",
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.last_work}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            S.current.not_exist,
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.comment}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            work.comentario!.isNotEmpty ? '${work.comentario}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
        ],
      ),
    );
  }

  Widget _tabsBodyService() {
    ServiceModel service = ServiceModel.fromJson(_workDetail!.service!);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0.h,
          ),
          Text(
            '${S.current.service_name}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.nombreServicio!.isNotEmpty
                ? '${service.nombreServicio}'
                : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.service_type}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.tipoServicio!.isNotEmpty ? '${service.tipoServicio}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.responsible_technician}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.responsableServicio!.isNotEmpty
                ? '${service.responsableServicio}'
                : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.contract}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.contrato!.isNotEmpty ? '${service.contrato}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.direction}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.direccion!.isNotEmpty ? '${service.direccion}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.phone}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.telefono!.isNotEmpty ? '${service.telefono}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.mail}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            service.email!.isNotEmpty ? '${service.email}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
        ],
      ),
    );
  }

  Widget _tabsBodyPeriodicity() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: _workDetail!.listPeriodicity?.length,
      itemBuilder: (BuildContext context, int index) {
        PeriodicityModel periodicity =
            PeriodicityModel.fromJson(_workDetail!.listPeriodicity?[index]);
        return Padding(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.0.w,
            top: 15.0.h,
            bottom: _workDetail!.listPeriodicity!.length - 1 == index
                ? 20.0.h
                : 5.0.h,
          ),
          child: Container(
            decoration: AppDecorations.boxDecorationWorkDetailPeriodicity,
            child: Padding(
              padding: EdgeInsets.all(15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.current.date}: ${AppUtils.getDayMonthFormat(periodicity.dia1!, periodicity.mes!, 2023)}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextOptionsWorkDetailIndex,
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    '${S.current.type}: ${periodicity.tipoMantenimientoPerio!.isNotEmpty ? periodicity.tipoMantenimientoPerio! : '-'}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextOptionsWorkDetailIndex,
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    '${S.current.description}: ${periodicity.textoPostit!.isNotEmpty ? periodicity.textoPostit! : '-'}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextGreyWorkDetailIndex,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _tabsBodySummaryEquipment() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: _workDetail!.listSummaryEquipment?.length,
      itemBuilder: (BuildContext context, int index) {
        SummaryEquipmentModel summaryEquipment = SummaryEquipmentModel.fromJson(
            _workDetail!.listSummaryEquipment?[index]);
        return Padding(
          padding: EdgeInsets.only(
            left: 20.0.w,
            right: 20.0.w,
            top: 15.0.h,
            bottom: _workDetail!.listSummaryEquipment!.length - 1 == index
                ? 20.0.h
                : 5.0.h,
          ),
          child: Container(
            decoration: AppDecorations.boxDecorationWorkDetailPeriodicity,
            child: Padding(
              padding: EdgeInsets.all(15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.current.summary_equipment}: ${summaryEquipment.desEquipo!.isNotEmpty ? summaryEquipment.desEquipo : '-'}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextOptionsWorkDetailIndex,
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    '${S.current.type}: ${summaryEquipment.tipo!.isNotEmpty ? summaryEquipment.tipo : '-'}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextOptionsWorkDetailIndex,
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    '${S.current.total}: ${summaryEquipment.total}',
                    textAlign: TextAlign.start,
                    style: AppStyles.appStyleTextGreyWorkDetailIndex,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _tabsBodyAdmin() {
    Admin admin = AdminModel.fromJson(_workDetail!.admin!);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0.h,
          ),
          Text(
            '${S.current.admin_name}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            admin.contacto!.isNotEmpty ? '${admin.contacto?.trim()}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
        ],
      ),
    );
  }

  Widget _tabsBodyCustomer() {
    CustomerModel customer = CustomerModel.fromJson(_workDetail!.customer!);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0.h,
          ),
          Text(
            '${S.current.customer_name}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.nombreComercial!.isNotEmpty
                ? '${customer.nombreComercial}'
                : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.cif}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.clienteCif!.isNotEmpty ? '${customer.clienteCif}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.phone}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.telefono!.isNotEmpty ? '${customer.telefono}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.mail}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.emailFacturacion!.isNotEmpty
                ? '${customer.emailFacturacion}'
                : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.customer_type}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.tipoCliente!.isNotEmpty ? '${customer.tipoCliente}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            '${S.current.method_payment}:',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextGreyWorkDetailIndex,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            customer.formaPago!.isNotEmpty ? '${customer.formaPago}' : '-',
            textAlign: TextAlign.start,
            style: AppStyles.appStyleTextOptionsWorkDetailIndex,
          ),
        ],
      ),
    );
  }

  String _getType(WorkModel work) {
    String type = work.tipo!;
    String result = '';

    if (type == 'P') {
      result = S.current.type_p.toUpperCase();
    } else if (type == 'A') {
      result = S.current.type_a.toUpperCase();
    } else if (type == 'D') {
      result = S.current.type_d.toUpperCase();
    }

    return result;
  }

  Future<void> _goBack() async {
    _navigator.pop();
  }

  void _initWork() {
    _showPopUpInitWork(true);
  }

  Future<void> _initWorkFromPopUpInitWork() async {
    _goBackFromPopUpInitWork();
    await _navigator.pushNamed(AppRoutes.start_work, arguments: _workDetail);
  }

  void _goBackFromPopUpInitWork() {
    _showPopUpInitWork(false);
  }
}
