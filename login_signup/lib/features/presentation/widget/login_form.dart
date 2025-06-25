import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/features/presentation/widget/custom_buttom.dart';
import 'package:login_signup/features/presentation/widget/email_field.dart';
import 'package:login_signup/features/presentation/widget/forgot_password_text_button.dart';
import 'package:login_signup/features/presentation/widget/password_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          SizedBox(height: 10),

          // Forgot password text button Align in end of the form
          Align(
            alignment: Alignment.centerRight,
            child: ForgotPasswordTextButton(),
          ),
          SizedBox(height: 18),

          // Button to submit the form
          CustomButtom(
            text: AppString.login,
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
