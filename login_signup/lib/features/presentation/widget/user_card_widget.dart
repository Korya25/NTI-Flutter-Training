import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';
import 'package:login_signup/features/presentation/widget/user_card_info.dart';

class UserCard extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const UserCard({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 2,
        shadowColor: AppColors.mainColor.withAlpha(150),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Hero(
                  tag: 'userImage${user.image}',
                  child: SizedBox(
                    width: 60,
                    height: 60,

                    child: Center(
                      child: ClipOval(child: Image.network(user.image)),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(child: UserCardInfo(user: user)),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.mainColor,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
