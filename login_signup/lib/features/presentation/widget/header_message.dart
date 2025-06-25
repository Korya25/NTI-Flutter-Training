import 'package:flutter/material.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class HeaderMessage extends StatelessWidget {
  const HeaderMessage({
    super.key,
    required this.title,
    required this.subtitle,
    this.spacing,
  });
  final String title;
  final String subtitle;
  final double? spacing;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: spacing ?? 6,
      children: [
        Text(
          title,
          style: AppTextStyle.heading,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          subtitle,
          style: AppTextStyle.subHeading,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
