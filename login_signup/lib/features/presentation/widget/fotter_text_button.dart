import 'package:flutter/material.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class FotterTextButton extends StatelessWidget {
  const FotterTextButton({
    super.key,
    required this.text1,
    this.onTap,
    required this.text2,
  });
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 2,
        children: [
          Text(text1, style: AppTextStyle.textButtonFotter),
          Text(text2, style: AppTextStyle.textButtonFotter),
        ],
      ),
    );
  }
}
