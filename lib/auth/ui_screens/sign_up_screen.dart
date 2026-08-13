import 'package:chat_app/auth/components/custom_button.dart';
import 'package:chat_app/auth/components/custom_text_field.dart';
import 'package:chat_app/auth/ui_screens/login_screen.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gap(70),
                SvgPicture.asset(
                  'assets/images/message-solid-full.svg',
                  color: Colors.white,
                  width: 150,
                ),
                Gap(10),
                Text(
                  'Welcome to chat app',
                  style: TextStyle(
                    color: Colors.grey.withAlpha(85),
                    fontSize: 20,
                    fontFamily: 'saira',
                  ),
                ),
                Gap(50),
                CustomTextField(hint: 'User name'),
                Gap(20),
                CustomTextField(hint: 'Email'),
                Gap(20),
                CustomTextField(hint: 'Password'),
                Gap(20),
                CustomTextField(hint: 'Confirm password'),
                Gap(40),
                CustomButton(text: 'Sign Up',),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you have an account...",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'saira',
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),)),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'saira',
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


