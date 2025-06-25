import 'package:flutter/material.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/features/presentation/widget/custom_back_button.dart';
import 'package:login_signup/features/presentation/widget/fotter_text_button.dart';
import 'package:login_signup/features/presentation/widget/header_message.dart';
import 'package:login_signup/features/presentation/widget/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyText,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SignUpViewBody(),
          ),
        ),
      ),
    );
  }
}

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Back button
        CustomBackbutton(),
        SizedBox(height: 30),

        // Header Message
        HeaderMessage(
          title: AppString.createAccount,
          subtitle: AppString.createAccountDescription,
        ),
        SizedBox(height: 30),

        // Login Form
        SignUpForm(),
        SizedBox(height: 270),
        // Footer
        FotterTextButton(
          text1: AppString.alreadyHaveAccount,
          text2: AppString.login,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
