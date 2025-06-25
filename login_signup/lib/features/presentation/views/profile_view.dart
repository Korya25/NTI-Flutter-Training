import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/core/resource/app_text_style.dart';
import 'package:login_signup/features/presentation/widget/custom_buttom.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.email, required this.password});

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bodyText,
        title: Text(AppString.profile, style: AppTextStyle.heading),
        centerTitle: true,
      ),
      backgroundColor: AppColors.bodyText,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: ProfileViewBody(email: email, password: password),
          ),
        ),
      ),
    );
  }
}

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150),

          // Message
          Text(
            AppString.youAreLoggedIn,
            style: AppTextStyle.heading.copyWith(fontSize: 18),
          ),

          //  Email
          SizedBox(height: 10),
          Text(
            email,
            style: AppTextStyle.heading.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          SizedBox(height: 30),
          Text(
            AppString.nowYouCanSeeAllUsers,
            maxLines: 2,
            style: AppTextStyle.subHeading,
          ),

          // You have acess to see all user
          SizedBox(height: 100),
          CustomButtom(
            height: 63,

            text: AppString.goToSeeAllUser.toUpperCase(),
            onTap: () {
              context.pushNamed(AppRoutes.allUsers);
            },
          ),
        ],
      ),
    );
  }
}
