import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/features/presentation/widget/fotter_text_button.dart';
import 'package:login_signup/features/presentation/widget/header_message.dart';
import 'package:login_signup/features/presentation/widget/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyText,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: LoginViewBody(),
          ),
        ),
      ),
    );
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Back button
        SizedBox(height: 55),

        // Header Message
        HeaderMessage(
          title: AppString.welcome,
          subtitle: AppString.welcomeDescription,
        ),
        SizedBox(height: 30),

        // Login Form
        LoginForm(),
        SizedBox(height: 240),
        // Footer
        FotterTextButton(
          text1: AppString.dontHaveAccount,
          text2: AppString.signUp,
          onTap: () {
            context.pushNamed(AppRoutes.register);
          },
        ),
      ],
    );
  }
}
