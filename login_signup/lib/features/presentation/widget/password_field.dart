import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/utils/validator.dart';
import 'package:login_signup/features/presentation/widget/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget.controller,
      hintText: AppString.passwordHint,
      prefixIcon: Icons.lock_outline,
      validator: Validator.password,
      obscureText: obscureText,
      suffixIcon: buildSuffixIcon(),
    );
  }

  Widget buildSuffixIcon() {
    return IconButton(
      icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        setState(() {
          obscureText = !obscureText;
        });
      },
    );
  }
}
