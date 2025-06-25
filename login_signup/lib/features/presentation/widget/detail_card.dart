// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login_signup/core/resource/app_text_style.dart';

class DetailCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const DetailCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 1,
      shadowColor: Colors.black.withOpacity(0.1),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade50,
                ),
                child: Icon(icon, color: Colors.blue.shade600, size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyle.textButton),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: AppTextStyle.heading.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              if (trailing != null) trailing!,
              if (onTap != null)
                Icon(Icons.copy, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
