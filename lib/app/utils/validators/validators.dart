import '../../../../../generated/l10n.dart';

class AppValidators {
  static String? nameValidator(String? value) {
    if (value == null) return S.current.new_user_name_empty;
    if (value == "") return S.current.new_user_name_empty;
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null) return S.current.new_user_wrong_password;
    if (value == "") return S.current.new_user_wrong_password;
    if (value != "" && value.trim().length < 6) {
      return S.current.new_user_wrong_password;
    }
    return null;
  }

  static String? cifValidator(String? value) {
    if (value == null) return S.current.add_cif;
    if (value == "") return S.current.add_cif;
    if (value != "" && value.trim().length < 9) return S.current.add_cif;
    return null;
  }

  static String? errorValidator(String? value) {
    switch (value) {
      case null:
      case '':
      default:
        return S.current.error_subtitle;
    }
  }
}
