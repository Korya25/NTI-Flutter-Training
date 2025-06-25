import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/features/presentation/widget/custom_buttom.dart';
import 'package:login_signup/features/presentation/widget/email_field.dart';
import 'package:login_signup/features/presentation/widget/password_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // email field
          EmailField(controller: emailController),
          SizedBox(height: 18),

          // Password field
          PasswordField(controller: passwordController),
          SizedBox(height: 18),

          // Button to submit the form
          CustomButtom(
            text: AppString.signUp,
            onTap: () {
              if (formKey.currentState!.validate()) {
                context.goNamed(
                  AppRoutes.profile,
                  extra: {
                    'email': emailController.text.trim(),
                    'password': passwordController.text.trim(),
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
