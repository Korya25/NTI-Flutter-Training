import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(AppString.forgotPassword, style: AppTextStyle.textButton),
    );
  }
}
