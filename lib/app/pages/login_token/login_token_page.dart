import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

import '../../../data/db/secure_storage/my_secure_storage_manager.dart';
import '../../../data/models/field/field_model.dart';
import '../../../data/models/material/material_model.dart';
import '../../../data/models/operation/operation_model.dart';
import '../../../data/models/user_login/login_initial_model.dart';
import '../../../data/models/user_login/technician_model.dart';
import '../../../data/models/user_login/token_model.dart';
import '../../../data/models/work/work_today_model.dart';
import '../../../data/services/controller.dart';
import '../../../domain/use_cases/get_all_works/get_all_works_use_case.dart';
import '../../../domain/use_cases/get_fields/get_fields_use_case.dart';
import '../../../domain/use_cases/get_materials/get_materials_use_case.dart';
import '../../../domain/use_cases/get_operations/get_operations_use_case.dart';
import '../../../domain/use_cases/login_token/login_token_use_case.dart';
import '../../../generated/l10n.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_constants.dart';
import '../../resources/app_images.dart';
import '../../resources/app_styles.dart';
import '../../routes/app_routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/validators/validators.dart';
import '../../widgets/button_generic.dart';
import '../../widgets/text_form_field_generic.dart';
import '../../widgets/will_pop_scope_generic.dart';

class LoginTokenPage extends StatefulWidget {
  const LoginTokenPage({Key? key}) : super(key: key);

  @override
  State<LoginTokenPage> createState() => _LoginTokenPageState();
}

class _LoginTokenPageState extends State<LoginTokenPage> {
  final Rx<AutovalidateMode> _autovalidateMode = AutovalidateMode.disabled.obs;
  final TextEditingController _textUserController = TextEditingController();
  final TextEditingController _textPassController = TextEditingController();
  final MySecureStorageManager _mySecureStorageManager = Get.find();
  final GetOperationsUseCase _getOperationsUseCase = Get.find();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GetMaterialsUseCase _getMaterialsUseCase = Get.find();
  final GetAllWorksUseCase _getAllWorksUseCase = Get.find();
  final LoginTokenUseCase _loginTokenUseCase = Get.find();
  final GetFieldsUseCase _getFieldsUseCase = Get.find();
  final FocusNode _focusNodeUser = FocusNode();
  final FocusNode _focusNodePass = FocusNode();
  final Controller _controller = Get.find();
  late NavigatorState _navigator;

  @override
  void initState() {
    super.initState();
    _navigator = Navigator.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScopeGeneric(
        onWillPop: false,
        action: () {},
        child: GestureDetector(
          onTap: _unFocus,
          child: Scaffold(
            backgroundColor: AppColors.white,
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0.h,
                      ),
                      Hero(
                        tag: AppConstants.tag_logo,
                        child: Image.asset(
                          AppImages.logo,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 50.0.h,
                      ),
                      TextFormFieldGeneric(
                        fillColor: AppColors.greyLight.withOpacity(0.3),
                        textEditingController: _textUserController,
                        autovalidateMode: _autovalidateMode.value,
                        onEditingComplete: _onEditingCompleteUser,
                        validator: AppValidators.nameValidator,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.text,
                        iconPrefix: Icons.person_rounded,
                        hintText: S.current.login_user,
                        iconColor: AppColors.grey,
                        focusNode: _focusNodeUser,
                        borderRadius: 5.0.r,
                        haveSuffix: false,
                        sizeIcon: 20.0.w,
                        padding: 30.0.w,
                        isFilled: true,
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      TextFormFieldGeneric(
                        fillColor: AppColors.greyLight.withOpacity(0.3),
                        validator: AppValidators.passwordValidator,
                        textEditingController: _textPassController,
                        autovalidateMode: _autovalidateMode.value,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.text,
                        iconSuffix: Icons.remove_red_eye,
                        hintText: S.current.login_pass,
                        iconPrefix: Icons.lock_rounded,
                        iconColor: AppColors.grey,
                        focusNode: _focusNodePass,
                        borderRadius: 5.0.r,
                        haveSuffix: true,
                        sizeIcon: 20.0.w,
                        padding: 30.0.w,
                        isFilled: true,
                      ),
                      SizedBox(
                        height: 50.0.h,
                      ),
                      ButtonGeneric(
                        text: S.current.login_button.toUpperCase(),
                        textStyle: AppStyles.appStyleButton,
                        onPressedCallback: _login,
                        width: double.infinity,
                        color: AppColors.blue,
                        borderRadius: 5.0.r,
                        padding: 50.0.w,
                        height: 50.0.h,
                      ),
                      SizedBox(
                        height: 40.0.h,
                      ),
                      GestureDetector(
                        onTap: _goToLoginInitial,
                        child: Text(
                          S.current.login_another_account,
                          style: AppStyles.appStyleText,
                        ),
                      ),
                      SizedBox(
                        height: 30.0.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _login() async {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      LoginInitialModel? loginInitial = LoginInitialModel(
        user: _textUserController.text, pass: _textPassController.text,
        cif: 'B11111111',
        //cif: (await _mySecureStorageManager.getLoginInitial())!.cif, //TODO - REALM
      );

      _controller.isLoading(true);
      final (bool? isState, TokenModel? token, String? error) =
          await _loginTokenUseCase.call(loginInitial: loginInitial);
      if (isState!) {
        if (token?.accessToken != '' && token!.technician!.isNotEmpty) {
          final TechnicianModel technician =
              TechnicianModel.fromJson(token.technician!);
          await _mySecureStorageManager.setToken(token.accessToken);
          _controller.technician(technician);
          //TODO - ADD REALM TECHNICIAN
          if (technician.esColaborador == 'true') {
            _controller.isLoading(false);
            await _navigator.pushNamed(AppRoutes.collaborator);
          } else if (technician.esColaborador == 'false') {
            final listResponses = await Future.wait(
              [
                _getAllWorksUseCase.call(),
                _getFieldsUseCase.call(type: AppConstants.endpointFields),
                _getMaterialsUseCase.call(type: AppConstants.endpointMaterials),
                _getOperationsUseCase.call(
                    type: AppConstants.endpointOperations),
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
              _controller.listWorksToday(listWorks);
              _controller.listFields(listFields);
              _controller.listMaterials(listMaterials);
              _controller.listOperations(listOperations);
              _controller.isLoading(false);
              await _navigator.pushNamedAndRemoveUntil(
                AppRoutes.profile,
                (Route<dynamic> route) => false,
              );
            }
            _controller.isLoading(false);
            if (errorAllWorks!.isNotEmpty) {
              AppUtils.showError(AppValidators.errorValidator(errorAllWorks));
            } else if (errorFields!.isNotEmpty) {
              AppUtils.showError(AppValidators.errorValidator(errorFields));
            } else if (errorMaterials!.isNotEmpty) {
              AppUtils.showError(AppValidators.errorValidator(errorMaterials));
            } else if (errorOperations!.isNotEmpty) {
              AppUtils.showError(AppValidators.errorValidator(errorOperations));
            }
            return;
          }
        }
      }
      _controller.isLoading(false);
      AppUtils.showError(AppValidators.errorValidator(error));
      return;
    }
    _autovalidateMode(AutovalidateMode.always);
  }

  void _unFocus() {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void _onEditingCompleteUser() {
    FocusScope.of(context).requestFocus(_focusNodePass);
  }

  Future<void> _goToLoginInitial() async {
    ///TODO - ADD LOGIN INITIAL '' REALM
    ///TODO - ADD URL '' REALM
    await _navigator.pushNamedAndRemoveUntil(
        AppRoutes.start_work, (Route<dynamic> route) => false);
  }
}
