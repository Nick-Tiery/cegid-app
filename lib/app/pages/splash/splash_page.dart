import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gestiona3w/data/models/user_login/login_initial_model.dart';
import 'package:gestiona3w/data/models/user_login/technician_model.dart';
import 'package:gestiona3w/domain/use_cases/login_token/login_token_use_case.dart';
import 'package:get/instance_manager.dart';

import '../../../data/db/secure_storage/my_secure_storage_manager.dart';
import '../../../data/models/field/field_model.dart';
import '../../../data/models/material/material_model.dart';
import '../../../data/models/operation/operation_model.dart';
import '../../../data/models/user_login/token_model.dart';
import '../../../data/models/work/work_today_model.dart';
import '../../../data/services/controller.dart';
import '../../../domain/use_cases/get_all_works/get_all_works_use_case.dart';
import '../../../domain/use_cases/get_fields/get_fields_use_case.dart';
import '../../../domain/use_cases/get_materials/get_materials_use_case.dart';
import '../../../domain/use_cases/get_operations/get_operations_use_case.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_images.dart';
import '../../routes/app_routes.dart';
import '../../widgets/will_pop_scope_generic.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final MySecureStorageManager _mySecureStorageManager = Get.find();
  final GetOperationsUseCase _getOperationsUseCase = Get.find();
  final GetMaterialsUseCase _getMaterialsUseCase = Get.find();
  final GetAllWorksUseCase _getAllWorksUseCase = Get.find();
  final LoginTokenUseCase _loginTokenUseCase = Get.find();
  final GetFieldsUseCase _getFieldsUseCase = Get.find();
  final Controller _controller = Get.find();
  late NavigatorState _navigator;

  @override
  void initState() {
    super.initState();
    _navigator = Navigator.of(context);
    _initApp();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeGeneric(
      onWillPop: false,
      action: () {},
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: Hero(
            tag: AppConstants.tag_logo,
            child: FadeIn(
              duration: const Duration(milliseconds: 2000),
              child: Image.asset(
                AppImages.logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _initApp() async {
    /*String? url = await _mySecureStorageManager.getUrlHttp();

    if (url == '') {
      await _navigator.pushNamed(AppRoutes.loginInitial);
    }

    _controller.url(url);*/
    String? token = await _mySecureStorageManager.getToken();

    if (token == '') {
      await _navigator.pushNamed(AppRoutes.loginToken);
    }

    final listResponses = await Future.wait(
      [
        _getAllWorksUseCase.call(),
        _getFieldsUseCase.call(type: AppConstants.endpointFields),
        _getMaterialsUseCase.call(type: AppConstants.endpointMaterials),
        _getOperationsUseCase.call(type: AppConstants.endpointOperations),
      ],
    );

    final (
      bool? isStateAllWorks,
      List<WorkTodayModel>? listWorks,
      String? errorAllWorks
    ) = listResponses[0] as (bool?, List<WorkTodayModel>?, String?);

    final (
      bool? isStateFields,
      List<FieldModel>? listFields,
      String? errorFields
    ) = listResponses[1] as (bool?, List<FieldModel>?, String?);

    final (
      bool? isStateMaterials,
      List<MaterialModel>? listMaterials,
      String? errorMaterials
    ) = listResponses[2] as (bool?, List<MaterialModel>?, String?);

    final (
      bool? isStateOperations,
      List<OperationModel>? listOperations,
      String? errorOperations
    ) = listResponses[3] as (bool?, List<OperationModel>?, String?);

    if (isStateAllWorks! &&
        isStateFields! &&
        isStateMaterials! &&
        isStateOperations!) {
      // TODO - PENSAR UNA MEJOR FORMA PARA OBTENER LOS DATOS DEL TÉCNICO - REALM
      final (bool? isState, TokenModel? token, String? error) =
          await _loginTokenUseCase.call(
              loginInitial: await _mySecureStorageManager.getLoginInitial());
      TechnicianModel? technician =
          TechnicianModel.fromJson(token!.technician!);
      _controller.technician(technician);
      _controller.listWorksToday(listWorks);
      _controller.listFields(listFields);
      _controller.listMaterials(listMaterials);
      _controller.listOperations(listOperations);
      await _navigator.pushNamed(AppRoutes.profile);
      return;
    }

    debugPrint(errorAllWorks);
    debugPrint(errorFields);
    debugPrint(errorMaterials);
    debugPrint(errorOperations);
    await _mySecureStorageManager.setToken('');
    await _navigator.pushNamedAndRemoveUntil(
        AppRoutes.loginInitial, (Route<dynamic> route) => false);
  }
}
