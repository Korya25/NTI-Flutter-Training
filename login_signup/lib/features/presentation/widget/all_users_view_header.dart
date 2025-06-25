
import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_text_style.dart';
import 'package:login_signup/features/presentation/widget/custom_back_button.dart';

class AllUsersViewHeader extends StatelessWidget {
  const AllUsersViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackbutton(),
        Text(AppString.allUsers, style: AppTextStyle.heading),
        SizedBox(),
      ],
    );
  }
}
