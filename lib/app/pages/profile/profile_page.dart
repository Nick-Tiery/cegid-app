import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/instance_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../data/models/work/service_model.dart';
import '../../../data/models/work/work_model.dart';
import '../../../data/models/work/work_today_model.dart';
import '../../../data/models/work_detail/work_detail_model.dart';
import '../../../data/services/controller.dart';
import '../../../domain/use_cases/get_work_detail/get_work_detail_use_case.dart';
import '../../../generated/l10n.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_decorations.dart';
import '../../resources/app_styles.dart';
import '../../routes/app_routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/validators/validators.dart';
import '../../widgets/icon_generic.dart';
import '../../widgets/will_pop_scope_generic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GetWorkDetailUseCase _getWorkDetailUseCase = Get.find();
  final Completer<GoogleMapController> _controllerMap =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.4165, -3.70256),
    zoom: 10.0,
  );
  final Controller _controller = Get.find();
  final _listMarkers = <Marker>[];
  late NavigatorState _navigator;
  final _mapStyle = ''.obs;

  @override
  void initState() {
    super.initState();
    _navigator = Navigator.of(context);
    _getLatitudeLongitude();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeGeneric(
      onWillPop: false,
      action: () {},
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Text(
                    S.current.have_today.toUpperCase(),
                    style: AppStyles.appStyleTextWorkDetail,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  height: 245.0.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _controller.listWorksToday.length,
                    padding: EdgeInsets.only(left: 20.0.w),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) =>
                        _itemWorkDetail(index),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Text(
                    S.current.locations_route.toUpperCase(),
                    style: AppStyles.appStyleTextWorkDetail,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: SizedBox(
                    height: 180.0.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0.r),
                      child: GoogleMap(
                        myLocationButtonEnabled: false,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: _onMapCreated,
                        markers: _listMarkers.toSet(),
                        zoomControlsEnabled: false,
                        gestureRecognizers: {
                          Factory<OneSequenceGestureRecognizer>(
                            () => EagerGestureRecognizer(),
                          )
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return SizedBox(
      height: 310.0.h,
      child: Stack(
        children: [
          Container(
            height: 150.0.h,
            decoration: AppDecorations.boxDecorationHeaderWorkDetail,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0.w),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: Container(
                      height: 50.0.h,
                      width: 50.0.w,
                      decoration:
                          AppDecorations.boxDecorationUserHeaderWorkDetail,
                      child: IconGeneric(
                        highlightColor: AppColors.transparent,
                        padding: EdgeInsets.zero,
                        onPressedCallback: () {},
                        color: AppColors.grey,
                        size: 35.0.w,
                        icon: const Icon(Icons.person_rounded),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100.0.w,
                            child: Text(
                              _controller.technician.value.nombre!,
                              style: AppStyles.appStyleTextUserNameWorkDetail,
                            ),
                          ),
                          IconGeneric(
                            highlightColor: AppColors.transparent,
                            padding: EdgeInsets.zero,
                            onPressedCallback: () {},
                            color: AppColors.white,
                            size: 22.0.w,
                            icon: const Icon(Icons.send_rounded),
                          ),
                          IconGeneric(
                            highlightColor: AppColors.transparent,
                            padding: EdgeInsets.zero,
                            onPressedCallback: () {},
                            color: AppColors.white,
                            size: 22.0.w,
                            icon: const Icon(Icons.settings_rounded),
                          ),
                          IconGeneric(
                            highlightColor: AppColors.transparent,
                            padding: EdgeInsets.zero,
                            onPressedCallback: () {},
                            color: AppColors.white,
                            size: 22.0.w,
                            icon: const Icon(Icons.question_mark_rounded),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0.h),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                highlightColor: AppColors.greyLight,
                              ),
                              child: PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert_rounded,
                                  color: AppColors.white,
                                  size: 22.0.w,
                                ),
                                padding: EdgeInsets.zero,
                                color: AppColors.white,
                                onSelected: (item) async {
                                  debugPrint(item);
                                  if (item == AppConstants.value_logout) {
                                    await _navigator.pushNamedAndRemoveUntil(
                                        AppRoutes.loginToken,
                                        (Route<dynamic> route) => false);
                                  } else if (item ==
                                      AppConstants.value_change) {
                                    await _navigator.pushNamedAndRemoveUntil(
                                        AppRoutes.loginInitial,
                                        (Route<dynamic> route) => false);
                                  }
                                },
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry>[
                                  PopupMenuItem(
                                    value: AppConstants.value_logout,
                                    child: Text(S.current.logout),
                                  ),
                                  PopupMenuItem(
                                    value: AppConstants.value_change,
                                    child: Text(S.current.change_account),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 230.0.w,
                        child: Text(
                          'Empresa',
                          style: AppStyles.appStyleTextUserCompanyWorkDetail,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120.0.h,
            left: 20.0.w,
            child: _boxOptions(),
          ),
        ],
      ),
    );
  }

  Widget _boxOptions() {
    return Container(
      width: 320.0.w,
      height: 180.0.h,
      decoration: AppDecorations.boxDecorationWorkDetail,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                _optionItem(
                    Icons.notification_add_outlined, S.current.option_signing),
                const SizedBox(),
                _optionItem(
                    Icons.work_history_outlined, S.current.option_my_works),
                const SizedBox(),
                _optionItem(
                    Icons.construction_outlined, S.current.option_equipment),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(),
              _optionItem(Icons.person_off_outlined, S.current.option_absence),
              const SizedBox(),
              _optionItem(Icons.inventory_outlined, S.current.option_stock),
              SizedBox(
                width: 5.0.w,
              ),
              _optionItem(Icons.help_outline_rounded, S.current.option_help),
              SizedBox(
                width: 8.0.w,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _optionItem(IconData icon, String text) {
    return Column(
      children: [
        IconGeneric(
          highlightColor: AppColors.grey.withOpacity(0.1),
          padding: EdgeInsets.zero,
          onPressedCallback: () {},
          color: AppColors.blue,
          size: 40.0.w,
          icon: Icon(icon),
        ),
        SizedBox(
          height: 5.0.h,
        ),
        Text(
          text,
          style: AppStyles.appStyleTextOptionsWorkDetail,
        ),
      ],
    );
  }

  Widget _itemWorkDetail(int index) {
    WorkModel work = WorkModel.fromJson(_controller.listWorksToday[index].work);
    ServiceModel service =
        ServiceModel.fromJson(_controller.listWorksToday[index].service);

    return GestureDetector(
      onTap: () async {
        await _goToWorkDetail(index);
      },
      child: Row(
        children: [
          Container(
            height: 220.0.h,
            width: 145.0.w,
            decoration: work.estado == 4
                ? AppDecorations.boxDecorationRedWorkDetail
                : work.estado == 2
                    ? AppDecorations.boxDecorationGreenWorkDetail
                    : AppDecorations.boxDecorationWorkDetail,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${work.idTrabajo}',
                            textAlign: TextAlign.end,
                            style: AppStyles.appStyleTextMaintenanceWorkDetail,
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          Text(
                            _getType(work),
                            textAlign: TextAlign.end,
                            style: AppStyles.appStyleTextGreyWorkDetail,
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          Text(
                            '${work.tipoMantenimientoTrabajo}',
                            textAlign: TextAlign.end,
                            style: AppStyles.appStyleTextMaintenanceWorkDetail,
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          if (work.horaAsignada != null)
                            Text(
                              //'05/07/2013',
                              '${work.horaAsignada}',
                              textAlign: TextAlign.end,
                              style: AppStyles.appStyleTextDateAmountWorkDetail,
                            ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          if (work.importeTrabajo != 0)
                            Text(
                              //'${S.current.estimated_amount} 60 €',
                              '${S.current.estimated_amount} ${work.importeTrabajo} €',
                              textAlign: TextAlign.end,
                              style: AppStyles.appStyleTextDateAmountWorkDetail,
                            ),
                        ],
                      ),
                    )
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    child: Text(
                      '${service.nombreServicio}',
                      textAlign: TextAlign.start,
                      style: AppStyles.appStyleTextServiceClientWorkDetail,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    child: Text(
                      '${service.direccion}',
                      textAlign: TextAlign.start,
                      style: AppStyles.appStyleTextDateAmountWorkDetail,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    child: Text(
                      '${service.poblacion} - ${service.codpostal}',
                      textAlign: TextAlign.start,
                      style: AppStyles.appStyleTextDateAmountWorkDetail,
                    ),
                  ),
                ),
                if (work.tiempoEstimado != 0)
                  SizedBox(
                    height: 5.0.h,
                  ),
                if (work.tiempoEstimado != 0)
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: Text(
                        "${work.tiempoEstimado}”",
                        textAlign: TextAlign.start,
                        style: AppStyles.appStyleTextEstimatedTimeWorkDetail,
                      ),
                    ),
                  ),
                SizedBox(
                  height: 10.0.h,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.0.w,
          ),
        ],
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    if (_controllerMap.isCompleted) {
      return;
    }
    _mapStyle(await rootBundle.loadString('assets/map_style/map_style.txt'));
    await controller.setMapStyle(_mapStyle.value);
    _controllerMap.complete(controller);
  }

  Future<void> _getLatitudeLongitude() async {
    List<MarkerId> listAux = [];
    for (WorkTodayModel workToday in _controller.listWorksToday) {
      WorkModel work = WorkModel.fromJson(workToday.work!);
      ServiceModel service = ServiceModel.fromJson(workToday.service!);
      if (service.coordenadasGps != null && service.coordenadasGps != '') {
        listAux.add(MarkerId('${work.idTrabajo}'));
        double latitude = double.parse(service.coordenadasGps!.split(',')[0]);
        double longitude = double.parse(service.coordenadasGps!.split(',')[1]);
        _listMarkers.add(
          Marker(
            markerId: MarkerId('${work.idTrabajo}'),
            position: LatLng(latitude, longitude),
            icon: await getMarker(false),
            onTap: () async {
              int index = listAux.indexOf(MarkerId('${work.idTrabajo}'));
              for (MarkerId markerId in listAux) {
                int indexMarker = listAux.indexOf(markerId);
                if (index == indexMarker) {
                  _listMarkers[indexMarker] = _listMarkers[indexMarker]
                      .copyWith(iconParam: await getMarker(true));
                } else {
                  _listMarkers[indexMarker] = _listMarkers[indexMarker]
                      .copyWith(iconParam: await getMarker(false));
                }
              }
              setState(() {});
            },
          ),
        );
      }
    }
    setState(() {});
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

  Future<BitmapDescriptor> getMarker(bool isPressed) async {
    const iconData = Icons.stars_rounded;
    final pictureRecorder = PictureRecorder();
    final canvas = Canvas(pictureRecorder);
    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    final iconStr = String.fromCharCode(iconData.codePoint);

    textPainter.text = TextSpan(
      text: iconStr,
      style: TextStyle(
        letterSpacing: 0.0,
        fontSize: 48.0,
        fontFamily: iconData.fontFamily,
        color: isPressed ? AppColors.green : AppColors.orange,
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, const Offset(0.0, 0.0));

    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(60, 60);
    final bytes = await image.toByteData(format: ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
  }

  Future<void> _goToWorkDetail(int index) async {
    WorkModel work = WorkModel.fromJson(_controller.listWorksToday[index].work);
    _controller.isLoading(true);
    final (bool? isState, WorkDetailModel? workDetail, String? error) =
        await _getWorkDetailUseCase.call(idWork: work.idTrabajo.toString());
    if (isState!) {
      _controller.isLoading(false);
      await _navigator.pushNamed(AppRoutes.work_detail, arguments: workDetail);
      return;
    }
    _controller.isLoading(false);
    AppUtils.showError(AppValidators.errorValidator(error));
  }
}
