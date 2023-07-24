import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../resources/app_colors.dart';
import 'icon_generic.dart';

//ignore: must_be_immutable
class TextFormFieldGeneric extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final AutovalidateMode autovalidateMode;
  final TextInputAction textInputAction;
  final Function()? onEditingComplete;
  final TextInputType textInputType;
  final _isObscure = true.obs;
  final IconData? iconSuffix;
  final double borderRadius;
  final IconData iconPrefix;
  final FocusNode focusNode;
  final bool haveSuffix;
  final double sizeIcon;
  final String hintText;
  final Color fillColor;
  final Color iconColor;
  final double padding;
  final bool isFilled;

  TextFormFieldGeneric({
    super.key,
    required this.textEditingController,
    required this.autovalidateMode,
    required this.textInputAction,
    required this.textInputType,
    required this.borderRadius,
    required this.haveSuffix,
    required this.iconPrefix,
    required this.validator,
    required this.focusNode,
    required this.fillColor,
    required this.iconColor,
    required this.hintText,
    required this.isFilled,
    required this.sizeIcon,
    this.onEditingComplete,
    required this.padding,
    this.iconSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Obx(
        () => TextFormField(
          onEditingComplete: onEditingComplete,
          controller: textEditingController,
          textInputAction: textInputAction,
          obscureText:
              iconSuffix != null ? _isObscure.value : !_isObscure.value,
          keyboardType: textInputType,
          focusNode: focusNode,
          validator: validator,
          autovalidateMode: autovalidateMode,
          decoration: InputDecoration(
            prefixIcon: IconGeneric(
              highlightColor: AppColors.transparent,
              onPressedCallback: () {},
              padding: EdgeInsets.zero,
              color: iconColor,
              size: sizeIcon,
              icon: Icon(
                iconPrefix,
              ),
            ),
            suffixIcon: haveSuffix
                ? IconGeneric(
                    highlightColor: AppColors.grey.withOpacity(0.1),
                    onPressedCallback: _changeObscure,
                    padding: EdgeInsets.zero,
                    size: sizeIcon,
                    color: iconColor,
                    icon: Icon(
                      iconSuffix,
                    ),
                  )
                : null,
            fillColor: fillColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
            filled: isFilled,
          ),
        ),
      ),
    );
  }

  void _changeObscure() {
    _isObscure.value ? _isObscure(false) : _isObscure(true);
  }
}
