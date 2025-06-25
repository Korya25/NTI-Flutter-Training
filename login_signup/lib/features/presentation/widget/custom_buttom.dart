import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap, this.height, required this.text});
  final VoidCallback? onTap;
  final double? height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 63,
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: AppTextStyle.buttom),
          ),
        ),
      ),
    );
  }
}
