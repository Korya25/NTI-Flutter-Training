import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/resource/app_text_style.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';

class UserCardInfo extends StatelessWidget {
  const UserCardInfo({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.fullName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.subHeading,
        ),
        const SizedBox(height: 4),
        Text(
          user.email,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.subHeading.copyWith(fontSize: 12),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.location_on, size: 14, color: AppColors.mainColor),
            const SizedBox(width: 4),
            Text(
              '${user.address.city}, ${user.address.country}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.subHeading.copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
