import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.height,
    this.borderRadius = 4,
    this.borderColor = AppColors.scaffoldBackground,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
     this.validator, this.onChanged, this.fillColor,
  });
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final double? height;
  final double borderRadius;
  final Color borderColor;
  final String hintText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final  Function(String)? onChanged;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      child: TextFormField(
        
        onChanged: onChanged,
        controller: controller,
        validator: validator,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          fillColor: fillColor?? Colors.transparent,
          filled: fillColor != null,
          hintText: hintText,
          hintStyle: AppTextStyle.subHeading,
          prefixIcon: Icon(prefixIcon, color: AppColors.scaffoldBackground),
          prefixIconColor: AppColors.scaffoldBackground,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
