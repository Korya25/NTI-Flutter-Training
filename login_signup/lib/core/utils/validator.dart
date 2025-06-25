import 'package:login_signup/core/constant/app_string.dart';

class Validator {
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return AppString.passwordVaildator;
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return AppString.emailValidator;
    }
    return null;
  }
}
