import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/utils/validator.dart';
import 'package:login_signup/features/presentation/widget/custom_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      hintText: AppString.emailHint,
      prefixIcon: Icons.email_outlined,
      validator: Validator.email,
    );
  }
}
