import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gestiona3w/data/db/secure_storage/my_secure_storage_manager.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

import '../../../data/models/user_login/login_initial_model.dart';
import '../../../data/services/controller.dart';
import '../../../domain/use_cases/login_initial/login_initial_use_case.dart';
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

class LoginInitialPage extends StatefulWidget {
  const LoginInitialPage({Key? key}) : super(key: key);

  @override
  State<LoginInitialPage> createState() => _LoginInitialPageState();
}

class _LoginInitialPageState extends State<LoginInitialPage> {
  final Rx<AutovalidateMode> _autovalidateMode = AutovalidateMode.disabled.obs;
  final TextEditingController _textUserController = TextEditingController();
  final TextEditingController _textPassController = TextEditingController();
  final TextEditingController _textCifController = TextEditingController();
  final MySecureStorageManager _mySecureStorageManager = Get.find();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginInitialUseCase _loginInitialUseCase = Get.find();
  final FocusNode _focusNodeUser = FocusNode();
  final FocusNode _focusNodePass = FocusNode();
  final FocusNode _focusNodeCif = FocusNode();
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
                        height: 40.0.h,
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
                        validator: AppValidators.cifValidator,
                        fillColor: AppColors.greyLight.withOpacity(0.3),
                        autovalidateMode: _autovalidateMode.value,
                        textEditingController: _textCifController,
                        onEditingComplete: _onEditingCompleteCif,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.text,
                        iconPrefix: Icons.home_filled,
                        hintText: S.current.login_cif,
                        iconColor: AppColors.grey,
                        focusNode: _focusNodeCif,
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
        cif: _textCifController.text,
        user: _textUserController.text,
        pass: _textPassController.text,
      );
      _controller.isLoading(true);
      final (bool? isState, String? url, String? error) =
          await _loginInitialUseCase.call(loginInitial: loginInitial);
      if (isState!) {
        if (url != '') {
          ///TODO - ADD LOGIN INITIAL REALM
          ///TODO - ADD URL REALM
          await _mySecureStorageManager.setLoginInitial(loginInitial);
          _controller.isLoading(false);
          await _navigator.pushNamedAndRemoveUntil(
              AppRoutes.loginToken, (Route<dynamic> route) => false);
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

  void _onEditingCompleteCif() {
    FocusScope.of(context).requestFocus(_focusNodeUser);
  }

  void _onEditingCompleteUser() {
    FocusScope.of(context).requestFocus(_focusNodePass);
  }
}
