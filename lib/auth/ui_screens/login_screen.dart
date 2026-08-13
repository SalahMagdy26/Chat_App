import 'package:chat_app/auth/components/custom_button.dart';
import 'package:chat_app/auth/components/custom_text_field.dart';
import 'package:chat_app/auth/ui_screens/sign_up_screen.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:chat_app/core/constants/ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/message-solid-full.svg',
                // color: Colors.white,
                width: 150,
                colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn),

              ),
              Gap(10),
              OrdinaryText(
                content: 'Welcome to chat app',
                size: 20,
                color: Colors.grey.withAlpha(85),
              ),
              Gap(50),
              CustomTextField(hint: 'Email'),
              Gap(20),
              CustomTextField(hint: 'Password'),
              Gap(40),
              CustomButton(text: 'Login'),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OrdinaryText(
                    content: "Don't have an account...",
                    size: 15,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    ),
                    child: OrdinaryText(
                      content: 'Sign Up',
                      color: Colors.blue,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
